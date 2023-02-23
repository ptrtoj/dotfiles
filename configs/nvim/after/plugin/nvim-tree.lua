local set = vim.g

set.loaded_netrw = 1
set.loaded_netrwPlugin = 1
-- Handled in 'set.lua'
--set.termguicolors = true

require("nvim-tree").setup()

vim.keymap.set('n', '<C-n>', '<CMD>NvimTreeToggle<CR>')
