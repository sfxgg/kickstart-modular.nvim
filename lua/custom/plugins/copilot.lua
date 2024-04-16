return {
  "zbirenbaum/copilot.lua",

  config = function()
    vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
  end
}
