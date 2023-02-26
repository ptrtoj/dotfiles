local ng_status_ok, ng = pcall(require, "neogit")
if not ng_status_ok then
    print ("ng_plugin_err")
    return
end

require("neogit").setup{}
