-- GENERAL
-- INSERT
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "Exit edit mode" })

vim.keymap.set("i", "<C-b>", "<ESC>^i", { noremap = true, silent = true, desc = "Beggining of line" })
vim.keymap.set("i", "<C-e>", "<ESC>$a", { noremap = true, silent = true, desc = "End of line" })

vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true, desc = "Move Left" })
vim.keymap.set("i", "<C-j>", "<Down>", { noremap = true, silent = true, desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<Up>", { noremap = true, silent = true, desc = "Move Up" })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true, desc = "Move Right" })

-- NORMAL
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Save File" })
vim.keymap.set("n", "<C-q>", ":wq<CR>", { noremap = true, silent = true, desc = "Save and quit" })
vim.keymap.set("n", "<C-Q>", ":wa<CR>", { noremap = true, silent = true, desc = "Quit all" })
vim.keymap.set(
  "n",
  "x",
  '"_x',
  { noremap = true, silent = true, desc = "Delete single character without copying into register" }
)
vim.keymap.set("n", "+", "<C-a>", { noremap = true, silent = true, desc = "Increment" })
vim.keymap.set("n", "-", "<C-x>", { noremap = true, silent = true, desc = "Decrement" })

vim.keymap.set("n", "ss", ":split<CR>", { noremap = true, silent = true, desc = "Horizontal Window Split" })
vim.keymap.set("n", "sv", ":vsplit<CR>", { noremap = true, silent = true, desc = "Vertical Window Split" })

vim.keymap.set("n", "<C-w><up>", ":resize +3<CR>", { noremap = true, silent = true, desc = "Resize Horizontal Up" })
vim.keymap.set("n", "<C-w><down>", ":resize -3<CR>", { noremap = true, silent = true, desc = "Resize Horizontal Down" })
vim.keymap.set(
  "n",
  "<C-w><left>",
  ":vertical resize +3<CR>",
  { noremap = true, silent = true, desc = "Resize Vertical Left" }
)
vim.keymap.set(
  "n",
  "<C-w><right>",
  ":vertical resize -3<CR>",
  { noremap = true, silent = true, desc = "Resize Vertical Right" }
)

vim.keymap.set("t", "<leader>tre", "<C-\\><C-n>|:FloatermToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>tre", "<C-\\><C-n>|:FloatermToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<leader>tp", "<C-\\><C-n>|:FloatermPrev<CR>")
vim.keymap.set("t", "<leader>tn", "<C-\\><C-n>|:FloatermNext<CR>")
-- gh extension install dlvhdr/gh-dash
vim.keymap.set("n", "<leader>tgd", ":FloatermNew --autohide=1 --height=0.7 --width=0.7 --autoclose=2 gh dash<CR>")
vim.keymap.set("n", "<leader>tg", ":FloatermNew --autohide=1 --height=0.7 --width=0.7 --autoclose=2 lazygit<CR>")
vim.keymap.set("n", "<leader>ti", ":FloatermNew --autohide=1 --height=0.7 --width=0.7 --autoclose=2 <CR>")
