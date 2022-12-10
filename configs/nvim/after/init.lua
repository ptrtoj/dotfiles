require('lualine').setup({
		options = {
			theme = 'nord',
			icons_enabled = true,
			component_separators = '|',
			section_separators = '',
		}
	})
	
require('nvim-tree').setup()
require('nvim-autopairs').setup()
require('colorizer').setup()