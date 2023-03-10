Server = {
	MaxTries = 32,
	EnableWhitelist = true,
	Emoji = { "ðĨ", "ðŦ", "ðĶ", "ðĻ", "ð", "ðĶ", "ðĶ§", "ðš", "ðĶ", "ðĶ", "ðą", "ðĶ", "ðĶ", "ðŪ", "ð·", "ð", "ð", "ð", "ð", "ðŠ", "ðŦ", "ðĶ", "ðĶ", "ð", "ðĶ", "ðĶ", "ð­", "ðđ", "ð°", "ð", "ðŋïļ", "ðĶ", "ðĶ", "ðŧ", "ðĻ", "ðž", "ðĶĨ", "ðĶĶ", "ðĶĻ", "ðĶ", "ðĶĄ", "ðū", "ðĶ", "ð", "ð", "ðĪ", "ðĶ", "ð§", "ðïļ", "ðĶ", "ðĶ", "ðĶĒ", "ðĶ", "ðĶĐ", "ðĶ", "ðĶ", "ðļ", "ð", "ðĒ", "ðĶ", "ð", "ðē", "ð", "ðĶ", "ðĶ", "ðģ", "ð", "ðŽ", "ð", "ð ", "ðĄ", "ðĶ", "ð", "ð", "ð", "ðĶ", "ð", "ð", "ð", "ð", "ðĶ", "ð·ïļ", "ðĶ", "ðĶ", "ð", "ðļ", "ðŪ", "ðĩïļ", "ðđ", "ðĨ", "ðš", "ðŧ", "ðž", "ð·", "ðą", "ðē", "ðģ", "ðī", "ðĩ", "ðū", "ðŋ", "âïļ", "ð", "ð", "ð", "ð", "ð", "ð°", "ðĶ", "ðĶ", "ðĶ", "ðĶ", "ð" },
	Kicked = {
		Default = "You were kicked.",
		Reason = " (%s)",
	},
	Deferrals = {
		Banned = "ðĻ You are banned. ðĻ\n\nReason: %s.\n\n%s hours and %s minutes remaining.",
		BannedForever = "âïļ You are permanently banned. âïļ\n\nReason: %s.\n\nAppeal on our website. (https://nonstoprp.net)",
		Blocked = "Too many retries.\n\nPlease wait before trying to connect.",
		InvalidName = "Your Steam name cannot contain special characters.",
		Timeout = "Timed out.",
		UserFailed = "User creation failed. Please contact the server owner.",
		Whitelist = "You must be a member of our community in order to join.\n\nYou may apply here: https://nonstoprp.net",
		Licenses = {
			["discord"] = "Discord must be running.",
			["license"] = "License rejected.\n\nDo you have a valid Rockstar account?",
			["name"] = "Steam name not found.",
			["steam"] = "Steam must be running.\n\nCheck if Steam's API is down, if it is, you'll have to wait until it comes back up. (https://downdetector.com/status/steam/)",
		},
	},
	Identifiers = {
		"discord",
		"endpoint",
		"license",
		"license2",
		"live",
		"name",
		"steam",
		"xbl",
	},
	Fields = {
		"first_joined",
		"id",
		"last_played",
		"priority",
		"flags",
	},
}