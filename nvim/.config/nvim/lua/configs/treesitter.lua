local treesitter_status_ok, treesitter = pcall(require, "nvim-treesitter")
if not treesitter_status_ok then
    print ("treesitter_plugin_err")
    return
end

require("nvim-treesitter.configs").setup{
  ensure_installed = { 
        "c", "cpp", 
        "haskell", "rust", "python", "scheme", "racket",
        "html", "css", "javascript", "typescript", "sql",
        "lua", "markdown", "vim", "help"
    },

  sync_install = false,

  auto_install = true,

  ignore_install = { "javascript" },

  indent = { enable = true },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  highlight = {
    enable = true,

    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    additional_vim_regex_highlighting = false,
  },
}
