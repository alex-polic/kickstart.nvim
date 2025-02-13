-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '\\', ':Neotree filesystem reveal position=left<CR>', desc = 'NeoTree reveal', silent = true },
      { '<leader>sd', ':Neotree diagnostics toggle position=bottom<CR>', desc = 'NeoTree [S]earch [D]iagnostics', silent = true },
      { '<leader>sb', ':Neotree buffers reveal position=left<CR>', desc = 'NeoTree [S]earch [B]uffers', silent = true },
    },
    opts = {
      sources = {
        'filesystem',
        'buffers',
        'git_status',
        'diagnostics',
      },
      source_selector = {
        winbar = true,
      },
      filesystem = {
        filtered_items = {
          visible = true,
        },
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
    },
  },
  {
    'mrbjarksen/neo-tree-diagnostics.nvim',
    dependencies = { 'nvim-neo-tree/neo-tree.nvim' },
  },
}
