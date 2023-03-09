vim.o.mouse = "a"
vim.o.guicursor = ""

-- with nvim-tree plugin
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.termguicolors = true

-- formatting
vim.o.ts = 4
vim.o.sts = 4
vim.o.sw = 4
vim.o.expandtab = true
vim.o.wrap = false

vim.o.so = 10
vim.o.scl = "yes"

-- UI
vim.o.nu = true
vim.o.rnu = true

vim.o.cul = true
vim.o.cc = "80"
vim.o.tw = 80

-- with indent-blankline plugin
vim.o.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- split window
vim.o.spr = true
vim.o.sb = true

-- search
vim.o.is = true
vim.o.hls = true
vim.o.scs = true
vim.o.sm = true

vim.o.lz = true

vim.o.swf = false
vim.o.bk = false

vim.o.eb = false

vim.cmd [[colorscheme nord]]

vim.o.timeout = true
timeoutlen = 500

vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = false

-- Wiki doesn't recommend these
--vim.o.nocompatible
--vim.o.si = true

-- telescope handles fuzzy finding
--vim.opt.path:append "**"
