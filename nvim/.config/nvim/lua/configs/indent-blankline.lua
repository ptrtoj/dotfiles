local ok, ib = pcall(require, "indent_blankline")
if not ok then
    print ("ib_plugin_err")
    return
end

require("indent_blankline").setup{
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
