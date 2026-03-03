# Neovim Configuration (Custom Kickstart)

This is a professional-grade Neovim configuration built on top of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). It features a modern, aesthetic UI and a highly optimized workflow for Go, Python, and generic development.

## Installation

```sh
git clone https://github.com/yuriy-kovalchuk/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

## Core Features

- **Modern UI**: Powered by [Noice.nvim](https://github.com/folke/noice.nvim) (floating command palette, nice notifications).
- **Aesthetic Statusline**: Using [Lualine](https://github.com/nvim-lualine/lualine.nvim) with the `tokyonight` theme.
- **Fuzzy Finding**: Advanced searching with [Telescope](https://github.com/nvim-telescope/telescope.nvim).
- **Fast Navigation**: 
  - [Harpoon2](https://github.com/ThePrimeagen/harpoon/tree/harpoon2) for pinning files.
  - Floating [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for browsing.
  - [Oil.nvim](https://github.com/stevearc/oil.nvim) for editing the filesystem as a buffer.
- **Session Management**: [Persistence.nvim](https://github.com/folke/persistence.nvim) to save and restore work automatically.
- **Debugging**: Full DAP support for **Go** (delve) and **Python** (debugpy).
- **LSP & Formatting**: Auto-configured Language Servers and Formatters via [Mason](https://github.com/williamboman/mason.nvim).

## Keymaps

The leader key is set to `<Space>`.

### Files & Navigation
- `<leader>e`: **Neo-tree** (Floating File Explorer).
- `-`: **Oil.nvim** (Edit directory as a buffer).
- `<leader>sf`: [S]earch [F]iles.
- `<leader>sg`: [S]earch by [G]rep.
- `<leader>lg`: **LazyGit** integration.

### Harpoon (Pinned Files)
- `<leader>a`: **Add** current file to Harpoon.
- `<C-e>`: **Toggle** Harpoon menu.
- `<C-h>`: Select file 1.
- `<C-t>`: Select file 2.
- `<C-n>`: Select file 3.
- `<C-s>`: Select file 4.

### Diagnostics & UI (Trouble & Noice)
- `<leader>xx`: **Trouble** Diagnostics (Project-wide).
- `<leader>xX`: **Trouble** Diagnostics (Current File).
- `<leader>cs`: **Trouble** Symbols (Current File structure).
- `<leader>u`: **Undotree** (Visualize undo history).
- `<C-\>`: **Toggle Terminal** (Floating).

### LSP & Refactoring
- `grn` or `<leader>rn`: [R]e[n]ame symbol.
- `gra` or `<leader>ca`: [C]ode [A]ction.
- `grd` or `<leader>gd`: [G]oto [D]efinition.
- `<leader>f`: [F]ormat buffer.

### Session Management
- `<leader>qs`: **Restore Session** for current directory.
- `<leader>ql`: **Restore Last Session**.
- `<leader>qd`: **Stop Saving** session (useful for temporary files).

### Debugging (DAP)
- `<F5>`: Start/Continue.
- `<F1>` / `<F2>` / `<F3>`: Step Into / Over / Out.
- `<leader>b`: Toggle Breakpoint.
- `<F7>`: Toggle Debug UI.

## Language Support

### LSPs (Auto-installed)
- **Go**: `gopls`
- **Python**: `pyright`
- **Lua**: `lua_ls`
- **Terraform**: `terraformls`

### Debuggers
- **Go**: `delve` (via `nvim-dap-go`)
- **Python**: `debugpy` (via `nvim-dap-python`)

### Linters & Formatters
- **Lua**: `stylua`
- **Python**: `isort`, `black`
- **Markdown**: `markdownlint`
