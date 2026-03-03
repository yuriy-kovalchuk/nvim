return {
  {
    'sindrets/diffview.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewFileHistory', 'DiffviewFocusFiles' },
    keys = {
      { '<leader>dv', '<cmd>DiffviewOpen<cr>', desc = 'Diffview Open' },
      { '<leader>dh', '<cmd>DiffviewFileHistory %<cr>', desc = 'Diffview File History' },
      { '<leader>dc', '<cmd>DiffviewClose<cr>', desc = 'Diffview Close' },
    },
    opts = {
      enhanced_diff_hl = true,
      use_icons = true,
      icons = {
        folder_closed = '',
        folder_open = '',
      },
      signs = {
        fold_closed = '',
        fold_open = '',
        done = '✓',
      },
    },
  },
}
