return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
  keys = {
    { '<Leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', desc = 'Order [B]uffers by num[b]er' },
    { '<Leader>bn', '<Cmd>BufferOrderByName<CR>', desc = 'Order [B]uffers by [N]ame' },
    { '<Leader>bd', '<Cmd>BufferOrderByDirectory<CR>', desc = 'Order [B]uffers by [D]irectory' },
    { '<Leader>bl', '<Cmd>BufferOrderByLanguage<CR>', desc = 'Order [B]uffers by [L]anguage' },
    { '<Leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', desc = 'Order [B]uffers by [W]indow number' },

    -- Move to previous/next
    { '<A-,>', '<Cmd>BufferPrevious<CR>' },
    { '<A-.>', '<Cmd>BufferNext<CR>' },

    -- Re-order to previous/next
    { '<A-<>', '<Cmd>BufferMovePrevious<CR>' },
    { '<A->>', '<Cmd>BufferMoveNext<CR>' },

    -- Goto buffer in position...
    { '<A-1>', '<Cmd>BufferGoto 1<CR>' },
    { '<A-2>', '<Cmd>BufferGoto 2<CR>' },
    { '<A-3>', '<Cmd>BufferGoto 3<CR>' },
    { '<A-4>', '<Cmd>BufferGoto 4<CR>' },
    { '<A-5>', '<Cmd>BufferGoto 5<CR>' },
    { '<A-6>', '<Cmd>BufferGoto 6<CR>' },
    { '<A-7>', '<Cmd>BufferGoto 7<CR>' },
    { '<A-8>', '<Cmd>BufferGoto 8<CR>' },
    { '<A-9>', '<Cmd>BufferGoto 9<CR>' },
    { '<A-0>', '<Cmd>BufferLast<CR>' },
    { '<A-c>', '<Cmd>BufferClose<CR>' },
  },

  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
