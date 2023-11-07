local status, lualine = pcall(require, "lualine")
if not status then
	return
end

local lualine_material = require("lualine.themes.material")
lualine.setup({

	options = {
		disabled_filetypes = { "packer", "NvimTree" },
		theme = "one_monokai",
	},
})
