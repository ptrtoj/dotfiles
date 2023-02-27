local ok, tree = pcall(require, "nvim-tree")
if not ok then
    print ("nvim-tree_plugin_err")
    return
end

require("nvim-tree").setup()
