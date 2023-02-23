local set = vim.opt

set.path:append '**'

set.nu = true
set.rnu = true

set.mouse       	= "a"
set.guicursor   	= ""
-- with nvim-tree plugin
set.termguicolors	= true

set.ts          	= 4
set.sts         	= 4
set.sw          	= 4
set.expandtab   	= true
set.si          	= true

set.wrap        	= false

set.so          	= 8
set.scl         	= "yes"

set.cul         	= true
set.cc          	= "80"

set.tw          	= 80
-- Format: v -> gq

-- with indent-blankline plugin
set.list        	= true
set.listchars:append "space:⋅"
set.listchars:append "eol:↴"

set.spr         	= true
set.sb          	= true

set.is          	= true
set.hls         	= true
set.scs         	= true
set.sm          	= true

set.lz          	= true

set.swf         	= false
set.bk          	= false

set.eb          	= false

vim.cmd[[colorscheme nord]]
