-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Coq
  'whonore/Coqtail',
  'tomtomjhj/coq-lsp.nvim',
  -- remove distractions
  'junegunn/goyo.vim',
  'junegunn/limelight.vim',
  -- Markdown
  {
    'plasticboy/vim-markdown',
    dependencies = {
      'godlygeek/tabular',
    },
  },
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && pnpm install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
  -- Unicode
  'chrisbra/unicode.vim',
  -- Typescript
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {},
    ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'vue' },
    config = function()
      require('typescript-tools').setup {
        on_attach = function(client, _)
          client.server_capabilities.documentFormattingProvider = false
          client.server_capabilities.documentRangeFormattingProvider = false
        end,
        filetypes = {
          'javascript',
          'javascriptreact',
          'typescript',
          'typescriptreact',
          'vue',
        },
        settings = {
          tsserver_plugins = {
            '@vue/typescript-plugin',
          },
          jsx_close_tag = {
            enable = true,
            filetypes = { 'javascriptreact', 'typescriptreact' },
          },
        },
      }
    end,
  },
  {
    'luckasRanarison/tailwind-tools.nvim',
    name = 'tailwind-tools',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim',
      'neovim/nvim-lspconfig',
    },
    opts = {},
  },
  -- Haskell
  {
    'mrcjkb/haskell-tools.nvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
}
