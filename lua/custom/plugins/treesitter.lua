return { -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    -- Parsers to install (no-op for already-installed parsers).
    --    See `SUPPORTED_LANGUAGES.md` for the full list.
    ensure_installed = {
      'bash',
      'c',
      'diff',
      'html',
      'go',
      'gomod',
      'gowork',
      'gosum',
      'java',
      'json',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'python',
      'query',
      'regex',
      'tsx',
      'typescript',
      'rust',
      'vim',
      'vimdoc',
      'yaml',
    },
  },
  config = function(_, opts)
    require('nvim-treesitter').install(opts.ensure_installed)

    -- Treesitter highlighting is opt-in per buffer (see `:help treesitter-highlight`).
    -- Start it for every filetype that has a parser installed; buffers without
    -- one fall back to Neovim's regex highlighting.
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        pcall(vim.treesitter.start, args.buf)
      end,
    })
  end,
}
