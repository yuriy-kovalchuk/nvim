return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<C-\>]],
      direction = 'float',
      float_opts = {
        border = 'curved',
      },
    },
    keys = {
      { [[<C-\>]], '<cmd>ToggleTerm<cr>', mode = { 'n', 't' }, desc = 'Toggle Terminal' },
    },
  },
}
