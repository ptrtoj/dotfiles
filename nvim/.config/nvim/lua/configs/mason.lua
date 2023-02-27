local ok, ng = pcall(require, "mason")
if not ok then
    print ("mason_plugin_err")
    return
end

local ok, ng = pcall(require, "mason-lspconfig")
if not ok then
    print ("mason-lspconfig_plugin_err")
    return
end


require("mason").setup()
require("mason-lspconfig").setup()
