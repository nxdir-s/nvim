local lualine_solarized_dark = require("lualine.themes.solarized_dark")

require("lualine").setup({
	options = {
		icons_enabled = false,
		theme = lualine_solarized_dark,
		component_separators = "|",
		section_separators = "",
	},
})
