local ll_status_ok, ll = pcall(require, "lualine")
if not ll_status_ok then
    print ("ll_plugin_err")
    return
end

require("lualine").setup({
    options = { theme = "nord" }
})
