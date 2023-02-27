local ok, ll = pcall(require, "lualine")
if not ok then
    print ("ll_plugin_err")
    return
end

require("lualine").setup({
    options = { theme = "nord" }
})
