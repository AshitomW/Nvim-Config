local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

treesitter.setup({
	highlight = {
		enable = true,
	},
	indent = { enable = true },
	autotag = { enable = true },
	ignore_install = { "help" },
	ensure_installed = {
		"cpp",
		"javascript",
		"html",
		"css",
		"json",
		"typescript",
		"tsx",
		"yaml",
		"markdown",
		"svelte",
		"sql",
		"graphql",
		"c",
		"bash",
		"lua",
		"vim",
		"dockerfile",
		"gitignore",
		"rust",
		"nasm",
		"make",
		"llvm",
		"python",
	},
	auto_install = true,
})
