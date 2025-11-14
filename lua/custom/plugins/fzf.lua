-- Fuzzy Finder (files, lsp, etc)
--
return {
  'ibhagwan/fzf-lua',
  enabled = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  keys = {
    -- Most used keybinds
    { '<C-p>', [[<Cmd>lua require"fzf-lua".files()<CR>]], {} },
    { '<C-l>', [[<Cmd>lua require"fzf-lua".live_grep()<CR>]], {} },
    { '<C-\\>', [[<Cmd>lua require"fzf-lua".buffers()<CR>]], {} },

    -- Core "search" mappings
    { '<leader>sf', '<cmd>FzfLua files<cr>', desc = 'Search [F]iles' },
    { '<leader>sg', '<cmd>FzfLua live_grep<cr>', desc = 'Search Live [G]rep' },
    { '<leader>sb', '<cmd>FzfLua buffers<cr>', desc = 'Search [B]uffers' },
    { '<leader>so', '<cmd>FzfLua oldfiles<cr>', desc = 'Search Recent Files' },
    { '<leader>sh', '<cmd>FzfLua help_tags<cr>', desc = 'Search [H]elp' },
    { '<leader>sk', '<cmd>FzfLua keymaps<cr>', desc = 'Search [K]eymaps' },
    --
    -- Git pickers
    { '<leader>gs', '<cmd>FzfLua git_status<cr>', desc = 'Git Status' },
    { '<leader>gc', '<cmd>FzfLua git_commits<cr>', desc = 'Git Commits' },
    { '<leader>gb', '<cmd>FzfLua git_branches<cr>', desc = 'Git Branches' },

    -- LSP pickers
    { '<leader>ld', '<cmd>FzfLua lsp_definitions<cr>', desc = 'LSP [D]efinitions' },
    { '<leader>lr', '<cmd>FzfLua lsp_references<cr>', desc = 'LSP [R]eferences' },

    { '<leader>li', '<cmd>FzfLua lsp_implementations<cr>', desc = 'LSP [I]mplementations' },
    { '<leader>ls', '<cmd>FzfLua lsp_document_symbols<cr>', desc = 'LSP [S]ymbols' },
  },
  -- keys = {
  --   { '<C-k>', [[<Cmd>lua require"fzf-lua".builtin()<CR>]], {} },
  --   { '<C-p>', [[<Cmd>lua require"fzf-lua".files()<CR>]], {} },
  --   { '<C-g>', [[<Cmd>lua require"fzf-lua".grep_project()<CR>]], {} },
  --   { '<F1>', [[<Cmd>lua require"fzf-lua".help_tags()<CR>]], {} },
  -- },
}
