local opt = vim.opt
opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd([[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]])
