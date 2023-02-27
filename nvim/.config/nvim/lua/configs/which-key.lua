local ok, whichkey = pcall(require, "which-key")
if not ok then
    print ("whichkey_plugin_err")
    return
end

local wk = require("which-key")

wk.register({
    ["<leader>"] = {
        {
            g = {"<CMD>Neogit<CR>", "Neogit"}
        },
{
            t = {"<CMD>NvimTreeToggle<CR>", "Toggle Nvim Tree"}
        },
        {
            f = {
                name = "+telescope",
                f = {"<CMD>lua require('telescope.builtin').find_files()<CR>", "TS>Find in File"},
                b = {"<CMD>lua require('telescope.builtin').buffers()<CR>", "TS>Find in Buffers"},
                h = {"<CMD>lua require('telescope.builtin').help_tags()<CR>", "TS>Find in Help"},
                g = {"<CMD>lua require('telescope.builtin').git_files()<CR>", "TS>Find in Git"},
                p = {"<CMD>lua require('telescope.builtin').live_grep()<CR>", "TS>Find in Grep"},
            },
        },
    }
})
