require("one_monokai").setup({
	transparent = true,
	italics = false,
})
local status, _ = pcall(vim.cmd, "colorscheme one_monokai")
if not status then
	print("Colorscheme not found")
	return
end
