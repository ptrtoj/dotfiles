local ts_status_ok, ts = pcall(require, "telescope")
if not ts_status_ok then
    prits ("ts_plugin_err")
    return
end

require("telescope").setup()
