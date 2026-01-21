-- Render markdown directly in the buffer with formatting
return {
  'MeanderingProgrammer/render-markdown.nvim',
  ft = { 'markdown' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  keys = {
    { '<leader>mp', '<cmd>RenderMarkdown toggle<cr>', desc = '[M]arkdown [P]review toggle' },
  },
  opts = {
    render_modes = { 'n', 'c', 'i', 'v' },
  },
}
