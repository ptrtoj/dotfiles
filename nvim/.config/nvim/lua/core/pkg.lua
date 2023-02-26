vim.cmd [[ packadd packer.nvim ]]

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost pkg.lua source <afile> | PackerCompile
    augroup end
]]

return require('packer').startup(function(use)
    -- We need a 'package manager'
    use {
        "wbthomason/packer.nvim"
    }

    -- Want to see files on the left side
    use {
        "nvim-tree/nvim-tree.lua", 
        requires = { "nvim-tree/nvim-web-devicons" },
        config = function() require("configs.nvim-tree") end
    }

    -- Now want to setup some 'key-binding' to open nvim-tree
    use {
        "folke/which-key.nvim",
        config = function() require("configs.which-key") end
    }

    -- Telescope below is unhappy w/o treesitter :/
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
        config = function() require("configs.treesitter") end
    }
    -- How about FZF??
    use {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = { "nvim-lua/plenary.nvim" },
        config = function() require("configs.telescope") end
    }

    -- Completion & snippets
    use {
        "hrsh7th/nvim-cmp", -- The completion plugin
        config = function() require("configs.cmp") end
    }

    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions

    -- snippets
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    -- into LSP world
    use "hrsh7th/cmp-nvim-lsp"
    use "hrsh7th/cmp-nvim-lua"
 
    -- LSP
    use {
        "neovim/nvim-lspconfig", -- enable LSP
        config = function() require("configs.lsp") end
    }

    use {
        "williamboman/mason.nvim", -- simple to use language server installer
        config = function() require("configs.mason") end
    }

    use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer

    use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics and code actions

    -- Default colors are bad :/
    use {
        "shaunsingh/nord.nvim"
    }

    -- And want some fancy status line :)
    use {
        "nvim-lualine/lualine.nvim", 
        requires = { "nvim-tree/nvim-web-devicons" }
    }

    -- Also, add indent indicator
    -- Actually, below seems to require treesitter
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function() require("configs.indent-blankline") end
    }

    -- Now, let's push to repo :)
    use {
        "TimUntersberger/neogit",
        requires = "nvim-lua/plenary.nvim",
        config = function() require("configs.neogit") end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)


