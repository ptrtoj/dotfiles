local ok, ng = pcall(require, "neogit")
if not ok then
    print ("ng_plugin_err")
    return
end

require("neogit").setup{}
