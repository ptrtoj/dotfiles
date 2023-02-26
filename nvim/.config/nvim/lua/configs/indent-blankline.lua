local ib_status_ok, ib = pcall(require, "indent_blankline")
if not ib_status_ok then
    print ("ib_plugin_err")
    return
end

require("indent_blankline").setup{
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
