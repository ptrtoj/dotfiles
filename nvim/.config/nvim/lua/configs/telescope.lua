local ok, ts = pcall(require, "telescope")
if not ok then
    prits ("telescope_plugin_err")
    return
end

require("telescope").setup()
