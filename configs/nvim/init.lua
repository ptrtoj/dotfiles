require('plugins')

vim.o.background = "dark"

vim.g.mapleader = " "

vim.cmd([[
	set	guicursor=
	set	nu rnu
	set	cul cc=80
	set	tw=80 " Format: v -> gq
	set	scl=yes
	set	so=8
	set	nowrap
	set	ts=4 sts=4 sw=4 expandtab
	set	si 
	set	list
	set	sm
	set	spr sb
	set	lz
	set	is hls
	set	scs
	set	noeb
	set	mouse=a
	set	noswf nobk
	colorscheme nord
]])