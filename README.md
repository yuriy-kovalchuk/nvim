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
- **Reliability**:
  - **Persistence.nvim**: Automatic session saving and restoration.
  - **Undotree**: Visual history of every change you've ever made to a file.

## Keymaps

The leader key is set to `<Space>`.

### Navigation & UI
- `<leader>e`: **Neo-tree** (Floating File Explorer).
- `-`: **Oil.nvim** (Edit directory as a buffer).
- `<C-\>`: **Toggle Terminal** (Floating).
- `<leader>u`: **Undotree** (Undo history visualization).
- `<leader>qs/ql`: **Restore Session** (Current/Last).

### Harpoon (Pinned Files)
- `<leader>a`: **Add** current file to Harpoon.
- `<C-e>`: **Toggle** Harpoon menu (edit lines to remove/reorder).
- `<C-h> / <C-t> / <C-n> / <C-s>`: Jump to files 1, 2, 3, or 4.

### Git & Diffing
- `<leader>dv`: **Diffview Open** (Project-wide diff).
- `<leader>dh`: **File History** (Timeline of changes for current file).
- `<leader>dc`: **Diffview Close**.
- `<leader>lg`: **LazyGit**.

### Diagnostics (Trouble)
- `<leader>xx`: **Project Diagnostics** (Beautifully grouped list).
- `<leader>xX`: **Buffer Diagnostics** (Current file only).
- `<leader>cs`: **Symbols View** (Browse functions/classes in current file).

### Debugging (DAP)
- `<F5>`: Start/Continue.
- `<F1> / <F2> / <F3>`: Step Into / Over / Out.
- `<leader>b`: Toggle Breakpoint.
- `<F7>`: Toggle Debug UI.

### LSP & Formatting
- `grn` or `<leader>rn`: [R]e[n]ame symbol.
- `gra` or `<leader>ca`: [C]ode [A]ction.
- `grd` or `<leader>gd`: [G]oto [D]efinition.
- `<leader>f`: [F]ormat buffer.

## Language Support

- **Go**: LSP (`gopls`), Debugger (`delve`).
- **Python**: LSP (`pyright`), Debugger (`debugpy`), Formatters (`isort`, `black`).
- **Lua**: LSP (`lua_ls`), Formatter (`stylua`).
- **Terraform**: LSP (`terraformls`), Linter (`tflint`).
- **Markdown**: Linter (`markdownlint`), Live Rendering (`render-markdown`).
