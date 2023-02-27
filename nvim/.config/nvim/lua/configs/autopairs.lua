local ok, cmp = pcall(require, "nvim-autopairs")
if not ok then
    print ("autopairs_plugin_err")
    return
end

require("nvim-autopairs").setup{
}
