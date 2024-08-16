# Neovim Configuration

Personal Neovim Configuration.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Plugins](#plugins)
- [Keybindings](#keybindings)
- [Customization](#customization)


## Features

- Highly customized status line
- Fuzzy file finder with Telescope
- Code completion with nvim-cmp
- LSP (Language Server Protocol) support
- Git integration with fugitive and gitsigns
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

2. Install packer.nvim:

    ```sh
    git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
    ```

3. Open Neovim and install the plugins:

    ```sh
    nvim +PackerSync
    ```

## Plugins

Here is a list of the major plugins included in this configuration:

- `nvim-treesitter/nvim-treesitter` - Enhanced syntax highlighting
- `neovim/nvim-lspconfig` - Configurations for the built-in LSP client
- `hrsh7th/nvim-cmp` - Autocompletion plugin
- `nvim-telescope/telescope.nvim` - Fuzzy finder and picker
- `tpope/vim-fugitive` - Git integration
- `lewis6991/gitsigns.nvim` - Git signs
- `kyazdani42/nvim-tree.lua` - File explorer
- `numToStr/Comment.nvim` - Easy commenting

## Keybindings

Here are some of the custom keybindings configured in this setup:

- `<Leader>ff` - Find files using Telescope
- `<Leader>fg` - Live grep using Telescope
- `<Leader>fb` - List buffers using Telescope
- `<Leader>fh` - Help tags using Telescope
- `<Leader>e` - Toggle Nvim Tree
- `<Leader>cc` - Comment/uncomment code
- `<Leader>gd` - Go to definition
- `<Leader>gr` - Go to references

For a complete list of keybindings, please refer to the `init.lua` file.

## Customization

Feel free to customize the configuration to suit your needs. You can modify the `init.lua` file and add or remove plugins, change keybindings, and tweak settings to your liking.

