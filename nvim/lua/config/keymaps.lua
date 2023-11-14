-- GENERAL
-- INSERT
vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true, desc = "Exit edit mode" })
vim.keymap.set("i", "<C-b>", "<ESC>^i", { noremap = true, silent = true, desc = "Beggining of line" })
vim.keymap.set("i", "<C-e>", "<ESC>$a", { noremap = true, silent = true, desc = "End of line" })
vim.keymap.set("i", "<w-h>", "<Left>", { noremap = true, silent = true, desc = "Move Left" })
vim.keymap.set("i", "<w-k>", "<Up>", { noremap = true, silent = true, desc = "Move Up" })
vim.keymap.set("i", "<w-j>", "<Down>", { noremap = true, silent = true, desc = "Move Down" })
vim.keymap.set("i", "<w-l>", "<Right>", { noremap = true, silent = true, desc = "Move Right" })

-- NORMAL
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Move line down" })
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Move line up" })
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Save File" })
vim.keymap.set("n", "<C-q>", ":wqa<CR>", { noremap = true, silent = true, desc = "Save and quit" })
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

vim.keymap.set(
  "t",
  "<leader>tre",
  "<C-\\><C-n>|:FloatermToggle<CR>",
  { noremap = true, silent = true, desc = "Show float terminal in terminal mode" }
)
vim.keymap.set(
  "n",
  "<leader>tre",
  "<C-\\><C-n>|:FloatermToggle<CR>",
  { noremap = true, silent = true, desc = "Show Float terminal in normal mode" }
)
vim.keymap.set(
  "t",
  "<leader>tp",
  "<C-\\><C-n>|:FloatermPrev<CR>",
  { noremap = true, silent = true, desc = "Prev terminal" }
)
vim.keymap.set(
  "t",
  "<leader>tn",
  "<C-\\><C-n>|:FloatermNext<CR>",
  { noremap = true, silent = true, desc = "Next terminal" }
)

--VISUAL
vim.keymap.set(
  "x",
  "<C-j>",
  ":move '>+1<CR>gv-gv",
  { noremap = true, silent = true, desc = "Move lines down in visual mode" }
)
vim.keymap.set(
  "x",
  "<C-k>",
  ":move '<-2<CR>gv-gv",
  { noremap = true, silent = true, desc = "Move lines up in visual mode" }
)
