local tree_status_ok, tree = pcall(require, "nvim-tree")
if not tree_status_ok then
    print ("tree_plugin_err")
    return
end

require("nvim-tree").setup()
