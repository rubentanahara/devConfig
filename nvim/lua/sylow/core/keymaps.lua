-- Function to set keymaps from the KeyMaps object
-- i, n, v, t, x
-- i = insert mode
-- n = normal mode
-- v = visual mode
-- t = terminal mode
-- x = command mode
local M = {
    general = {
        -- test
        i = {
            -- use jk to exit insert mode
            ["jk"] = {"<ESC>", "Exit insert mode"},
            -- go to beginning of line
            ["<C-b>"] = {"<ESC>^i", "Beginning of line"},
            -- go to end of line
            ["<C-e>"] = {"<ESC>$a", "End of line"},
        },
        n = {
            ["<Esc>"] = {"<cmd> noh <CR>", "Clear highlights"},
            -- float term
            ["<leader>tre"] = {":FloatermToggle<CR>", "Toggle Floaterm"},
            ["<leader>tgd"] = {":FloatermNew --autohide=1 --height=0.7 --width=0.7 --autoclose=2 gh dash<CR>",
                               "Open gh dash in Floaterm"},
            ["<leader>tg"] = {":FloatermNew --autohide=1 --height=0.7 --width=0.7 --autoclose=2 lazygit<CR>",
                              "Open lazygit in Floaterm"},
            ["<leader>ti"] = {":FloatermNew --autohide=1 --height=0.7 --width=0.7 --autoclose=2 <CR>",
                              "Open terminal in Floaterm"},
            -- other general normal mode mappings
            -- Switch between windows
            ["wh"] = {"<C-w>h", "Window left"},
            ["wl"] = {"<C-w>l", "Window right"},
            ["wj"] = {"<C-w>j", "Window down"},
            ["wk"] = {"<C-w>k", "Window up"},
            -- Save File
            ["<leader>w"] = {":w<CR>", "Save File"},
            -- Save and quit
            ["<leader>q"] = {":wq<CR>", "Save and quit"},
            -- Copy all
            ["<C-c>"] = {"<cmd> %y+ <CR>", "Copy whole file"},
            -- clear search highlight
            ["<C-l>"] = {":noh<CR>", "Clear search highlight"},
            -- delete single character without copying into register
            ["x"] = {'"_x', "Delete single character without copying into register"},
            -- Increment/ decrement
            ["+"] = {"<C-a>", "Increment"},
            ["-"] = {"<C-x>", "Decrement"},
            -- Line numbers
            ["<leader>n"] = {":set nu!<CR>", "Toggle line numbers"},
            ["<leader>nr"] = {":set rnu!<CR>", "Toggle relative line numbers"},
            -- Resize Window
            ["<C-w><up>"] = {":resize +3<CR>", "Resize Window"},
            ["<C-w><down>"] = {":resize -3<CR>", "Resize Window"},
            ["<C-w><left>"] = {":vertical resize +3<CR>", "Resize Window"},
            ["<C-w><right>"] = {":vertical resize -3<CR>", "Resize Window"},
            -- Split Window
            ["ss"] = {":split<CR>", "Horizontal Split Window"},
            ["sv"] = {":vsplit<CR>", "Vertical Split Window"},
            -- Make split equal size
            ["<leader>se"] = {":wincmd =<CR>", "Make split equal size"},
            -- Tabs
            ["<leader>tt"] = {":tabnew<CR>", "New Tab"},
            ["<leader>to"] = {":tabonly<CR>", "Close all other tabs"},
            ["<leader>tc"] = {":tabclose<CR>", "Close Tab"},
            ["<leader>te"] = {":tabedit ", "Edit Tab"},
            ["<leader>tm"] = {":tabmove ", "Move Tab"},
            ["<leader>tn"] = {":tabnext<CR>", "Next Tab"},
            ["<leader>tp"] = {":tabprevious<CR>", "Previous Tab"},
            -- Delete a word
            ["<leader>d"] = {"dw", "Delete a word"},
            -- DElete a word backwards
            ["<leader>db"] = {"db", "Delete a word backwards"},
            -- New Buffer
            ["<leader>nb"] = {":enew<CR>", "New Buffer"},
            -- Buffer Navigation
            ["<leader>bp"] = {":bp<CR>", "Previous Buffer"},
            ["<leader>bn"] = {":bn<CR>", "Next Buffer"},
            ["<leader>bd"] = {":bd<CR>", "Delete Buffer"}
        },
        t = {
            ["<leader>tre"] = {":FloatermToggle<CR>", "Toggle Floaterm"},
            ["<leader>tp"] = {":FloatermPrev<CR>", "Go to previous Floaterm"},
            ["<leader>tn"] = {":FloatermNext<CR>", "Go to next Floaterm"},
            ["<C-x>"] = {"<C-\\><C-n>", "Escape terminal mode"}
        },
        v = {
            -- Indent lines
            ["<"] = {"<gv", "Indent line"},
            [">"] = {">gv", "Indent line"}
        },
        x = {
            ["p"] = {
                'p:let @+=@0<CR>:let @"=@0<CR>',
                "Dont copy replaced text",
                opts = {
                    silent = true
                }
            }
        }
    }
}

-- Function to set keymaps from the KeyMaps object
local function setKeymaps()
	for mode, modeMap in pairs(M.general) do
		for mapping, action in pairs(modeMap) do
			local keys, description = unpack(action)
			if keys and description then
				vim.api.nvim_set_keymap(mode, mapping, keys, { noremap = true, silent = true })
			end
		end
	end
end

setKeymaps()
