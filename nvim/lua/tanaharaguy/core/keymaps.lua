-- Function to set keymaps from the KeyMaps object
-- i, n, v, t, x
-- i = insert mode
-- n = normal mode
-- v = visual mode
-- t = terminal mode
-- x = command mode

local KeyMaps = {
	general = {
		-- test
		i = {
			-- use jk to exit insert mode
			["jk"] = { "<ESC>", "Exit insert mode" },
			-- go to beginning of line
			["<C-b>"] = { "<ESC>^i", "Beginning of line" },
			-- go to end of line
			["<C-e>"] = { "<ESC>$a", "End of line" },
			-- navigate witin insert mode
			["<C-h>"] = { "<Left>", "Move Left" },
			["<C-j>"] = { "<Down>", "Move Down" },
			["<C-k>"] = { "<Up>", "Move Up" },
			["<C-l>"] = { "<Right>", "Move Right" },
		},
		n = {
			--Save File
			["<C-s>"] = { ":w<CR>", "Save File" },
			--Save and quit
			["<C-q>"] = { ":wq<CR>", "Save and quit" },
			-- Select all
			-- ["<C-a>"] = { "ggVG", "Select all" },
			--clear search highlight
			["<C-l>"] = { ":noh<CR>", "Clear search highlight" },
			-- delete single character without copying into register
			["x"] = { '"_x', "Delete single character without copying into register" },
			--Increment/ decrement
			["+"] = { "<C-a>", "Increment" },
			["-"] = { "<C-x>", "Decrement" },
			--Line numbers
			["<leader>n"] = { ":set nu!<CR>", "Toggle line numbers" },
			["<leader>nr"] = { ":set rnu!<CR>", "Toggle relative line numbers" },
			--Resize Window
			["<C-w><up>"] = { ":resize +3<CR>", "Resize Window" },
			["<C-w><down>"] = { ":resize -3<CR>", "Resize Window" },
			["<C-w><left>"] = { ":vertical resize +3<CR>", "Resize Window" },
			["<C-w><right>"] = { ":vertical resize -3<CR>", "Resize Window" },
			--Split Window
			["ss"] = { ":split<CR>", "Horizontal Split Window" },
			["sv"] = { ":vsplit<CR>", "Vertical Split Window" },
			--Make split equal size
			["<leader>se"] = { ":wincmd =<CR>", "Make split equal size" },
			--Close current split
			["<leader>q"] = { ":q<CR>", "Close current split" },
			--Tabs
			["<leader>tt"] = { ":tabnew<CR>", "New Tab" },
			["<leader>to"] = { ":tabonly<CR>", "Close all other tabs" },
			["<leader>tc"] = { ":tabclose<CR>", "Close Tab" },
			["<leader>te"] = { ":tabedit ", "Edit Tab" },
			["<leader>tm"] = { ":tabmove ", "Move Tab" },
			["<leader>tn"] = { ":tabnext<CR>", "Next Tab" },
			["<leader>tp"] = { ":tabprevious<CR>", "Previous Tab" },
			--Delete a word
			["<leader>d"] = { "dw", "Delete a word" },
			--DElete a word backwards
			["<leader>db"] = { "db", "Delete a word backwards" },
			--New Buffer
			["<leader>nb"] = { ":enew<CR>", "New Buffer" },
			--Buffer Navigation
			["<leader>bp"] = { ":bp<CR>", "Previous Buffer" },
			["<leader>bn"] = { ":bn<CR>", "Next Buffer" },
			["<leader>bd"] = { ":bd<CR>", "Delete Buffer" },
		},
	},
}

-- Function to set keymaps from the KeyMaps object
local function setKeymaps()
	for mode, modeMap in pairs(KeyMaps.general) do
		for mapping, action in pairs(modeMap) do
			local keys, description = unpack(action)
			if keys and description then
				vim.api.nvim_set_keymap(mode, mapping, keys, { noremap = true, silent = true })
			end
		end
	end
end

setKeymaps()

-- Window navigation
vim.api.nvim_set_keymap("", "sh", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "sk", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "sj", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("", "sl", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("t", "<leader>tre", "<C-\\><C-n>|:FloatermToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tre", "<C-\\><C-n>|:FloatermToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ti", ":FloatermNew<CR>")
vim.keymap.set("t", "<leader>tp", "<C-\\><C-n>|:FloatermPrev<CR>")
vim.keymap.set("t", "<leader>tn", "<C-\\><C-n>|:FloatermNext<CR>")

vim.keymap.set("n", "<leader>tg", ":FloatermNew --autohide=1 --height=0.7 --width=0.7 --autoclose=2 lazygit<CR>")
