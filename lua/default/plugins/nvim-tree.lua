local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

-- Recommended settigs from documentations

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
nvimtree.setup({

	sync_root_with_cwd = true,
	update_focused_file = {
		enable = true,
		update_cwd = true,
	},
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder is closed
					arrow_open = "", -- arrow when folder is open
				},
			},
		},
	},

	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
