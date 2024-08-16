local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then
	return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
	return
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
	return
end

vim.diagnostic.config({
	virtual_text = true,
	update_in_insert = true,
	underline = true,
	severity_sort = true,
	float = {
		focusable = true,
		border = "rounded",
	},
})
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = "rounded",
})

local keymap = vim.keymap
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	-- set keybinds
	keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)
	keymap.set("n", "gD", function()
		vim.lsp.buf.declaration()
	end, opts)
	keymap.set("n", "gt", function()
		vim.lsp.buf.type_definition()
	end, opts)
	keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)
	keymap.set("n", "<leader>vws", function()
		vim.lsp.buf.workspace_symbol()
	end, opts)
	keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)
	keymap.set("n", "[d", function()
		vim.diagnostic.goto_next()
	end, opts)
	keymap.set("n", "]d", function()
		vim.diagnostic.goto_prev()
	end, opts)
	keymap.set("n", "<leader>vca", function()
		vim.lsp.buf.code_action()
	end, opts)
	keymap.set("n", "<leader>vrr", function()
		vim.lsp.buf.references()
	end, opts)
	keymap.set("n", "<leader>vrn", function()
		vim.lsp.buf.rename()
	end, opts)
	keymap.set("i", "<C-h>", function()
		vim.lsp.buf.signature_help()
	end, opts)

	if client.name == "clangd" then
		keymap.set("n", "<leader>sf", ":ClangdSwitchSourceHeader<CR>")
	end
end

local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["html"].setup({

	capabilities = capabilities,
	on_attach = on_attach,
})

typescript.setup({
	server = {
		capabilities = capabilities,
		on_attach = on_attach,
	},
})

lspconfig["clangd"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	cmd = { "clangd", "--completion-style=detailed" },
})
lspconfig["rust_analyzer"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	filetypes = { "rust" },
	root_dir = lspconfig.util.root_pattern("Cargo.toml"),
	settings = {
		["rust-analyzer"] = {
			cargo = {
				allFeatures = true,
			},
		},
	},
})
lspconfig["cssls"].setup({

	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["pyright"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["tailwindcss"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
})

lspconfig["lua_ls"].setup({
	capabilities = capabilities,
	on_attach = on_attach,
	settings = { -- custom settings for lua
		Lua = {
			-- make the language server recognize "vim" global
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				-- make language server aware of runtime files
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})
