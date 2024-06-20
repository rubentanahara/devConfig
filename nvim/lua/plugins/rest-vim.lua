return {
  "rest-nvim/rest.nvim",
  ft = "http",
  dependencies = { "luarocks.nvim" },
  config = function()
    require("rest-nvim").setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>rr", "<cmd>Rest run<cr>", { desc = "Run request under the cursor" })
    keymap.set("n", "<leader>rl", "<cmd>Rest run last<er>", { desc = "Re-run latest test" })
  end,
}
