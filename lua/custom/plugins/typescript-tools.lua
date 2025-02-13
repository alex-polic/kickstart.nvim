-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {},
  config = function()
    local tools = require 'typescript-tools'
    tools.setup {
      settings = {
        tsserver_format_options = {
          insertSpaceAfterOpeningAndBeforeClosingNonemptyBraces = false,
        },
        tsserver_file_preferences = {
          includeInlayVariableTypeHints = true,
        },
      },
    }
  end,
}
