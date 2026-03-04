# Neovim Configuration (Custom Kickstart)

This is a professional-grade Neovim configuration built on top of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). It is meticulously tuned for a **modern IntelliJ (New UI) aesthetic** while providing a high-performance workflow for Go, Python, and generic development.

## Installation

```sh
git clone https://github.com/yuriy-kovalchuk/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

## Core Features

- **JetBrains Aesthetic**: Powered by [jb.nvim](https://github.com/nickkadutskyi/jb.nvim) with rounded LSP borders and semantic highlighting.
- **Modern UI**: [Noice.nvim](https://github.com/folke/noice.nvim) provides a floating command palette and modern notifications.
- **Advanced Navigation**: 
  - **Floating Neo-tree**: Center-screen file browsing with `<leader>e`.
  - **Harpoon2**: Pin and jump between your most used files instantly.
  - **Oil.nvim**: Edit your filesystem like a normal Neovim buffer.
- **Git Power-user Tools**:
  - **Diffview.nvim**: Specialized UI for project-wide diffs and merge conflicts.
  - **LazyGit**: Integrated terminal for full Git management.
- **Debugging & LSP**: 
  - Full DAP support for **Go** (delve) and **Python** (debugpy).
  - Pre-configured Language Servers (LSP) with automatic installation via Mason.
  - Powered by **blink.cmp** for ultra-fast autocompletion.
- **Reliability**:
  - **Persistence.nvim**: Automatic session saving and restoration.
  - **Undotree**: Visual history of every change you've ever made to a file.

### Treesitter

This configuration uses `nvim-treesitter` for advanced syntax highlighting and code understanding.

- **Auto-install**: Missing parsers are automatically installed when you open a file of a new type.
- **Pre-installed**: Includes support for `bash`, `c`, `diff`, `html`, `lua`, `luadoc`, `markdown`, `vim`, `vimdoc`, and `go`.
- **Maintenance**: Use `:TSUpdate` to update all installed parsers.

## Keymaps

The leader key is set to `<Space>`.

### Navigation & UI
- `<leader>e`: **Neo-tree** (Floating File Explorer).
- `-`: **Oil.nvim** (Edit directory as a buffer).
- `<C-\>`: **Toggle Terminal** (Floating).
- `<leader>u`: **Undotree** (Undo history visualization).
- `<leader>qs / ql / qd`: **Session Management** (Restore current / last / stop saving).
- `<C-h/j/k/l>`: Move focus between windows.

### Fuzzy Finder (Telescope)
- `<leader>sf`: **Search Files**.
- `<leader>sg`: **Search by Grep**.
- `<leader>sw`: **Search current Word**.
- `<leader>sd`: **Search Diagnostics**.
- `<leader>sk`: **Search Keymaps**.
- `<leader>sh`: **Search Help**.
- `<leader>sr`: **Search Resume** (Last search).
- `<leader>s.`: **Search Recent Files**.
- `<leader><leader>`: **Find existing buffers**.
- `<leader>/`: **Fuzzily search in current buffer**.
- `<leader>sn`: **Search Neovim configuration files**.

### Harpoon (Pinned Files)
- `<leader>a`: **Add** current file to Harpoon.
- `<C-e>`: **Toggle** Harpoon menu.
- `<leader>1 / 2 / 3 / 4`: Jump to files 1, 2, 3, or 4.

### Git & Diffing
- `<leader>lg`: **LazyGit** (Full TUI).
- `<leader>dv / dh / dc`: **Diffview** (Open / File History / Close).
- `]c / [c`: Jump to **next/previous change**.
- `<leader>hs / hr`: **Stage / Reset** hunk.
- `<leader>hp`: **Preview** hunk.
- `<leader>hb`: **Blame** line.
- `<leader>tb`: **Toggle** current line blame.

### LSP & Formatting
- `grn` or `<leader>rn`: **Rename** symbol.
- `gra` or `<leader>ca`: **Code Action**.
- `grd` or `<leader>gd`: **Goto Definition**.
- `grr` or `<leader>gr`: **Goto References**.
- `gri` or `<leader>gi`: **Goto Implementation**.
- `gO` or `<leader>ds`: **Document Symbols**.
- `<leader>f`: **Format buffer** (via conform.nvim).

### Debugging (DAP)
- `<F5>`: **Start / Continue**.
- `<F1> / <F2> / <F3>`: **Step Into / Over / Out**.
- `<leader>b / B`: **Toggle Breakpoint** / Set conditional breakpoint.
- `<F7>`: **Toggle Debug UI**.

### Markdown Tools
- `<leader>mp`: **Toggle Preview** (Live rendering).
- `<leader>tm`: **Toggle Markdown Lint**.

## Plugins, Formatters & Linters

### Core Plugins
- **lazy.nvim**: Plugin manager.
- **nvim-lspconfig**: LSP configuration.
- **mason.nvim**: External tool manager (LSP, DAP, Formatters, Linters).
- **blink.cmp**: Modern autocompletion engine.
- **nvim-treesitter**: Syntax highlighting.
- **telescope.nvim**: Fuzzy finder.
- **which-key.nvim**: Keybinding documentation.

### Formatters (via conform.nvim)
- **stylua**: Lua formatting.
- **gopls**: Go formatting (fallback).

### Linters (via nvim-lint)
- **markdownlint**: Markdown linting.

### Language Support
- **Go**: LSP (`gopls`), Debugger (`delve`).
- **Python**: LSP (`pyright`), Debugger (`debugpy`).
- **Lua**: LSP (`lua_ls`).
- **Terraform**: LSP (`terraformls`), Linter (`tflint`).
