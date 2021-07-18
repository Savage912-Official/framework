local mpGamerTags = {}
local mpGamerTagSettings = {}

local gtComponent = {
    GAMER_NAME = 0,
    CREW_TAG = 1,
    healthArmour = 2,
    BIG_TEXT = 3,
    AUDIO_ICON = 4,
    MP_USING_MENU = 5,
    MP_PASSIVE_MODE = 6,
    WANTED_STARS = 7,
    MP_DRIVER = 8,
    MP_CO_DRIVER = 9,
    MP_TAGGED = 10,
    GAMER_NAME_NEARBY = 11,
    ARROW = 12,
    MP_PACKAGES = 13,
    INV_IF_PED_FOLLOWING = 14,
    RANK_TEXT = 15,
    MP_TYPING = 16
}

local function makeSettings()
    return {
        alphas = {},
        colors = {},
        healthColor = false,
        toggles = {},
        wantedLevel = false
    }
end

local templateStr

function updatePlayerNames()
    -- Re-run this function next frame.
    SetTimeout(0, updatePlayerNames)

    -- Return if no template string is set.
    if not templateStr then
        return
    end

    -- Get local coordinates to compare to.
    local localCoords = GetEntityCoords(PlayerPedId())

    -- Each valid player index
    for i = 0, 255 do
        -- If the player exists.
        if NetworkIsPlayerActive(i) and i ~= PlayerId() then
            -- Get their ped.
            local ped = GetPlayerPed(i)
            local pedCoords = GetEntityCoords(ped)

            -- Make a new settings list if needed.
            if not mpGamerTagSettings[i] then
                mpGamerTagSettings[i] = makeSettings()
            end

            -- Check gamer tag activity in case the game deleted the gamer tag.
            -- Check ped, because changing player models may recreate the ped.
            if not mpGamerTags[i] or mpGamerTags[i].ped ~= ped or not IsMpGamerTagActive(mpGamerTags[i].tag) then
                local nameTag = formatPlayerNameTag(i, templateStr)

                -- Remove any existing tag.
                if mpGamerTags[i] then
                    RemoveMpGamerTag(mpGamerTags[i].tag)
                end

                -- Store new tag.
                mpGamerTags[i] = {
                    tag = CreateMpGamerTag(GetPlayerPed(i), nameTag, false, false, '', 0),
                    ped = ped
                }
            end

            -- Store the tag in a local.
            local tag = mpGamerTags[i].tag

            -- Should the player be renamed? this is set by events.
            if mpGamerTagSettings[i].rename then
                SetMpGamerTagName(tag, formatPlayerNameTag(i, templateStr))
                mpGamerTagSettings[i].rename = nil
            end

            -- Check distance.
            local distance = #(pedCoords - localCoords)

            -- Show/hide based on nearbyness/line-of-sight.
            -- Nearby checks are primarily to prevent a lot of LOS checks.
            if distance < 250 and HasEntityClearLosToEntity(PlayerPedId(), ped, 17) then
                SetMpGamerTagVisibility(tag, gtComponent.GAMER_NAME, true)
                SetMpGamerTagVisibility(tag, gtComponent.healthArmour, IsPlayerTargettingEntity(PlayerId(), ped))
                SetMpGamerTagVisibility(tag, gtComponent.AUDIO_ICON, NetworkIsPlayerTalking(i))

                SetMpGamerTagAlpha(tag, gtComponent.AUDIO_ICON, 255)
                SetMpGamerTagAlpha(tag, gtComponent.healthArmour, 255)

                -- Override settings.
                local settings = mpGamerTagSettings[i]

                for k, v in pairs(settings.toggles) do
                    SetMpGamerTagVisibility(tag, gtComponent[k], v)
                end

                for k, v in pairs(settings.alphas) do
                    SetMpGamerTagAlpha(tag, gtComponent[k], v)
                end

                for k, v in pairs(settings.colors) do
                    SetMpGamerTagColour(tag, gtComponent[k], v)
                end

                if settings.wantedLevel then
                    SetMpGamerTagWantedLevel(tag, settings.wantedLevel)
                end

                if settings.healthColor then
                    SetMpGamerTagHealthBarColour(tag, settings.healthColor)
                end
            else
                SetMpGamerTagVisibility(tag, gtComponent.GAMER_NAME, false)
                SetMpGamerTagVisibility(tag, gtComponent.healthArmour, false)
                SetMpGamerTagVisibility(tag, gtComponent.AUDIO_ICON, false)
            end
        elseif mpGamerTags[i] then
            RemoveMpGamerTag(mpGamerTags[i].tag)

            mpGamerTags[i] = nil
        end
    end
end

local function getSettings(id)
    local i = GetPlayerFromServerId(tonumber(id))

    if not mpGamerTagSettings[i] then
        mpGamerTagSettings[i] = makeSettings()
    end

    return mpGamerTagSettings[i]
end

RegisterNetEvent('playernames:configure')

AddEventHandler('playernames:configure', function(id, key, ...)
    local args = table.pack(...)

    if key == 'tglc' then
        getSettings(id).toggles[args[1]] = args[2]
    elseif key == 'seta' then
        getSettings(id).alphas[args[1]] = args[2]
    elseif key == 'setc' then
        getSettings(id).colors[args[1]] = args[2]
    elseif key == 'setw' then
        getSettings(id).wantedLevel = args[1]
    elseif key == 'sehc' then
        getSettings(id).healthColor = args[1]
    elseif key == 'rnme' then
        getSettings(id).rename = true
    elseif key == 'name' then
        getSettings(id).serverName = args[1]
        getSettings(id).rename = true
    elseif key == 'tpl' then
        for _, v in pairs(mpGamerTagSettings) do
            v.rename = true
        end

        templateStr = args[1]
    end
end)

AddEventHandler('playernames:extendContext', function(i, cb)
    cb('serverName', getSettings(GetPlayerServerId(i)).serverName)
end)

AddEventHandler('onResourceStop', function(name)
    if name == GetCurrentResourceName() then
        for _, v in pairs(mpGamerTags) do
            RemoveMpGamerTag(v.tag)
        end
    end
end)

SetTimeout(0, function()
    TriggerServerEvent('playernames:init')
end)

-- Run this function every frame.
SetTimeout(0, updatePlayerNames)