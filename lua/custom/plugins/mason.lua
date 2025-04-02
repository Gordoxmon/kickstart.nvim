-- plugins/mason.lua
return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'jayp0521/mason-null-ls.nvim',
    'neovim/nvim-lspconfig', -- Required to hook into LSPs
    'nvimtools/none-ls.nvim', -- null-ls
  },
  config = function()
    require('mason').setup()

    require('mason-lspconfig').setup {
      ensure_installed = {
        'lua_ls',
        'tsserver',
        'intelephense',
        'jsonls',
        'phpactor',
        'psalm',
        'eslint',
      },
      automatic_installation = true,
    }

    require('mason-null-ls').setup {
      ensure_installed = {
        'eslint_d',
        'prettier',
        'stylua',
        'phpcs',
        'phpcbf',
        'php-cs-fixer',
        'jsonlint',
        'phpstan',
      },
      automatic_installation = true,
    }
  end,
}
