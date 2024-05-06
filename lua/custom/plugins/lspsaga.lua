return {
  'nvimdev/lspsaga.nvim',
  config = function()
    require('lspsaga').setup {
      vim.keymap.set('n', 'gh', '<cmd>Lspsaga hover_doc<CR>'),
      vim.keymap.set('n', '<leader>tt', '<cmd>Lspsaga term_toggle<CR>'),
      code_action = { enable = false },
      code_action_prompt = { enable = false },
      lightbulb = { enable = false },
    }
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter', -- optional
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
