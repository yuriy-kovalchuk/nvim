-- Render markdown directly in the buffer with formatting
-- Preview markdown in the browser via markdown-preview.nvim
return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { 'markdown' },
    dependencies = {
      { 'nvim-treesitter/nvim-treesitter', branch = 'main' },
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      { '<leader>mp', '<cmd>RenderMarkdown toggle<cr>', desc = '[M]arkdown [P]review (buffer)' },
    },
    opts = {
      render_modes = { 'n', 'c', 'i', 'v' },
    },
  },
  {
    'iamcco/markdown-preview.nvim',
    ft = { 'markdown' },
    build = 'cd app && npm install',
    keys = {
      { '<leader>mb', '<cmd>MarkdownPreviewToggle<cr>', desc = '[M]arkdown [B]rowser preview toggle' },
    },
  },
}
