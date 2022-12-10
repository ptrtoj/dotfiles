local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use ({
		'shaunsingh/nord.nvim',
		commit = "78f5f001709b5b321a35dcdc44549ef93185e024"})

	-- dependency
	use 'kyazdani42/nvim-web-devicons'
		use 'nvim-lualine/lualine.nvim'
		use 'kyazdani42/nvim-tree.lua'
	-- end

	use 'windwp/nvim-autopairs'
	use 'mhinz/vim-startify'
	use 'DanilaMihailov/beacon.nvim'
	use 'norcalli/nvim-colorizer.lua'

	if packer_bootstrap then
		require('packer').sync()
	end
end)

