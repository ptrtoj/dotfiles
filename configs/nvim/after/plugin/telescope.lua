local builtin = require('telescope.builtin')

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

map('n', '<leader>ff', builtin.find_files)
map('n', '<leader>fg', builtin.live_grep)
map('n', '<leader>fb', builtin.buffers)
map('n', '<leader>fh', builtin.help_tags)
map('n', '<leader>fi', builtin.git_files)

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                ["<C-h>"] = "which_key"
            }
        }
    }
}
