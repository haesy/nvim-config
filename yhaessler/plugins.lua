vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(user)
    -- package manager
    use { "wbthomason/packer.nvim" }
    -- theme
    use { "catppuccin/nvim", as = "catppuccin" }
    -- status line
    use { "nvim-lualine/lualine.nvim" }
    -- automatically close pairs like brackets
    use { "windwp/nvim-autopairs" }
    -- nicer directory/file tree
    use { "nvim-tree/nvim-tree.lua" }
    use { "nvim-tree/nvim-web-devicons" }
    
    -- fast incremental parser 
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function()
            local update = require("nvim-treesitter.install").update({
                with_sync = true,
                compilers = { "zig", "clang", "gcc" }
            })
            update()
        end,
    }
    -- different colors for different delimiters
    use { "https://gitlab.com/HiPhish/rainbow-delimiters.nvim.git", as = "rainbow-delimiters" }
    -- playground for tree-sitter
    use { "nvim-treesitter/playground" }
    -- autoclose/-rename HTML/XML tags
    use { "windwp/nvim-ts-autotag" }
    -- fuzzy find stuff
    use { 
        "nvim-telescope/telescope.nvim",
        requires = { 
            {"nvim-lua/plenary.nvim"},
        }
    }
    -- learning / pratice vim movements
    use { "ThePrimeagen/vim-be-good" }
end)
