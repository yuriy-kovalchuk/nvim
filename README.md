# Neovim Configuration (Kickstart-based)

This is a customized Neovim configuration based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim). It is designed to be a functional and extensible base for modern software development.

## Installation

Clone the repository to your Neovim config directory:

```sh
git clone https://github.com/yuriy-kovalchuk/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

## Core Features

- **Fuzzy Finding**: Powered by [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- **LSP Support**: Pre-configured Language Server Protocol support with automatic installation via [Mason](https://github.com/williamboman/mason.nvim).
- **Debugging**: Integrated debugger support with [nvim-dap](https://github.com/mfussenegger/nvim-dap).
- **Autocompletion**: Fast and modern completion engine with [blink.cmp](https://github.com/Saghen/blink.cmp).
- **Syntax Highlighting**: Advanced highlighting and code navigation via [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- **File Explorer**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) for browsing the filesystem.
- **Git Integration**: [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) for gutter signs and [LazyGit](https://github.com/kdheepak/lazygit.nvim) integration.
- **Autoformatting**: Powered by [conform.nvim](https://github.com/stevearc/conform.nvim).
- **Linting**: Powered by [nvim-lint](https://github.com/mfussenegger/nvim-lint).

## Installed Plugins

### Core
- `lazy.nvim`: Plugin manager.
- `nvim-telescope/telescope.nvim`: Fuzzy finder.
- `neovim/nvim-lspconfig`: LSP configurations.
- `mfussenegger/nvim-dap`: Debug Adapter Protocol.
- `saghen/blink.cmp`: Autocompletion engine.
- `nvim-treesitter/nvim-treesitter`: Syntax highlighting.

### Languages & Tools
- `leoluz/nvim-dap-go`: Go debugging support.
- `mfussenegger/nvim-dap-python`: Python debugging support.
- `stevearc/conform.nvim`: Formatter.
- `mfussenegger/nvim-lint`: Linter.
- `MeanderingProgrammer/render-markdown.nvim`: Markdown preview in buffer.

### UI & UX
- `folke/tokyonight.nvim`: Main colorscheme.
- `nvim-neo-tree/neo-tree.nvim`: File tree.
- `lewis6991/gitsigns.nvim`: Git gutter signs.
- `folke/which-key.nvim`: Keymap helper.
- `lukas-reineke/indent-blankline.nvim`: Indentation guides.
- `NMAC427/guess-indent.nvim`: Automatic indentation detection.
- `windwp/nvim-autopairs`: Automatic pair closing.
- `echasnovski/mini.nvim`: Collection of small utilities (ai, surround, statusline).

## LSP, Linters, and Formatters

### LSPs (Auto-installed via Mason)
- **Lua**: `lua_ls`
- **Go**: `gopls`
- **Python**: `pyright`
- **C/C++**: `clangd`
- **Terraform**: `terraformls`
- **TFLint**: `tflint`

### Formatters (via conform.nvim)
- **Lua**: `stylua`
- **Python**: `isort`, `black` (configured but currently fallback to LSP)

### Linters (via nvim-lint)
- **Markdown**: `markdownlint` (can be toggled with `<leader>tm`)

## Keymaps

The leader key is set to `<Space>`.

### General
- `<Esc>`: Clear search highlights.
- `<leader>q`: Open diagnostic quickfix list.
- `<C-h/j/k/l>`: Move focus between windows.
- `\\`: Toggle Neo-tree file explorer.
- `<leader>lg`: Open LazyGit.

### Search (Telescope)
- `<leader>sf`: [S]earch [F]iles.
- `<leader>sg`: [S]earch by [G]rep.
- `<leader>sw`: [S]earch current [W]ord.
- `<leader>sd`: [S]earch [D]iagnostics.
- `<leader>sh`: [S]earch [H]elp.
- `<leader>sk`: [S]earch [K]eymaps.
- `<leader>sr`: [S]earch [R]esume.
- `<leader>s.`: [S]earch recent files.
- `<leader><leader>`: Find existing buffers.
- `<leader>/`: Fuzzily search in current buffer.

### LSP
- `grn` or `<leader>rn`: [R]e[n]ame symbol.
- `gra` or `<leader>ca`: [C]ode [A]ction.
- `grr` or `<leader>gr`: [G]oto [R]eferences.
- `gri` or `<leader>gi`: [G]oto [I]mplementation.
- `grd` or `<leader>gd`: [G]oto [D]efinition.
- `gO` or `<leader>ds`: [D]ocument [S]ymbols.
- `gW` or `<leader>ws`: [W]orkspace [S]ymbols.
- `<leader>th`: [T]oggle inlay [H]ints.

### Debugging (DAP)
- `<F5>`: Start/Continue debugging.
- `<F1>`: Step Into.
- `<F2>`: Step Over.
- `<F3>`: Step Out.
- `<leader>b`: Toggle Breakpoint.
- `<leader>B`: Set Breakpoint with condition.
- `<F7>`: Toggle Debug UI.

### Markdown
- `<leader>mp`: [M]arkdown [P]review toggle.
- `<leader>tm`: [T]oggle [m]arkdown linting.

### Formatting
- `<leader>f`: [F]ormat buffer.

## Debugging Go and Python

### Go Debugging
1. Open a `.go` file.
2. Set a breakpoint with `<leader>b`.
3. Press `<F5>` to start. Choose "Debug" or "Test".
4. Use `<F1>`, `<F2>`, `<F3>` to step through code.

### Python Debugging
1. Open a `.py` file.
2. Set a breakpoint with `<leader>b`.
3. Press `<F5>` to start. Choose "Debug Config" or "Test".
4. The debugger will use `debugpy` (automatically installed).
