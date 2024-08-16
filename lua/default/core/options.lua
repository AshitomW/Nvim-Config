local opt = vim.opt --for conciseness

--line numbers

opt.relativenumber = true
opt.number = true

--tabs and indentations

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = false

-- wrapping
opt.wrap = false

-- search setting --

opt.ignorecase = true
opt.smartcase = true

-- appearance

opt.termguicolors = true
opt.background = "dark"

-- backspace

opt.backspace = "indent,eol,start"
--clipboard
opt.clipboard:append("unnamedplus")

-- split window

opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")
-- disable Automatic Commenting
vim.cmd([[autocmd FileType * set formatoptions-=ro]])
