# Neovim Configuration

Welcome to my Neovim configuration! This repository contains my personal configurations, keybindings, and plugins setup for Neovim.


## Table of Contents
- [Features](#features)
- [Installation](#installation)
- [Plugins](#plugins)
- [Keybindings](#keybindings)
- [Customization](#customization)
- [Contributing](#contributing)

## Features
- Highly customized status line
- Fuzzy file finder with Telescope
- Code completion with nvim-cmp
- LSP (Language Server Protocol) support
- Syntax highlighting with treesitter
- Easy file navigation with nvim-tree
- Quick code commenting
- Custom keybindings for improved workflow

## Installation
To install my Neovim configuration, follow these steps:

1. Clone this repository:
   ```sh
   git clone https://github.com/yourusername/neovim-config.git ~/.config/nvim
   ```

2. Install the required plugins using `vim-plug`:
   ```sh
   nvim +PlugInstall +qall
   ```

3. Install external dependencies (e.g., LSP servers, linters, formatters):
   ```sh
   :LspInstall <language_server>
   ```

## Plugins
Here is a list of the major plugins included in this configuration:

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Enhanced syntax highlighting
- [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - Configurations for the built-in LSP client
- [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Autocompletion plugin
- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder and picker
- [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git signs
- [kyazdani42/nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - File explorer
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - Easy commenting

## Keybindings
Here are some of the custom keybindings configured in this setup:

- `<Leader>ff` - Find files using Telescope
- `<Leader>fg` - Live grep using Telescope
- `<Leader>fb` - List buffers using Telescope
- `<Leader>fh` - Help tags using Telescope
- `<Leader>nt` - Toggle Nvim Tree
- `gc/gb` - Comment/uncomment linewise/blockwise code (linewise)
- `<Leader>gd` - Go to definition
- `<Leader>gr` - Go to references

For a complete list of keybindings, please refer to the configuration files.

## Customization
Feel free to customize the configuration to suit your needs. You can modify the `init.vim` or `init.lua` file and add or remove plugins, change keybindings, and tweak settings to your liking.

## Contributing
Contributions are welcome! If you have any suggestions or improvements, please open an issue or submit a pull request.
