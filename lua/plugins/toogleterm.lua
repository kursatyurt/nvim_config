-- return {
--   -- amongst your other plugins
--   { "akinsho/toggleterm.nvim", version = "*", config = true },
--   -- or
--   -- {'akinsho/toggleterm.nvim', version = "*", opts = {--[[ things you want to change go here]]}},
-- }
return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
       -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == "horizontal" then
          return 25
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      -- size = 20,
      open_mapping = [[<leader>t]],
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "horizontal",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "single",
         winblend = 3,
      },
    },
    keys = {
      {
        "<leader>t",
        desc = "Toggle term",
      },
    },
  },
}
