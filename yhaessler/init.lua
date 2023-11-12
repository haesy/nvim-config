require("yhaessler.plugins")
require("yhaessler.remaps")

-- use english
vim.fn.setenv("LANG", "en_US.utf8")
vim.o.langmenu = "en_US.utf8"
-- define 1 tab = 4 spaces
vim.o.tabstop = 4
vim.o.softtabstop = 4
-- replace tabs with spaces
vim.o.expandtab = true
-- enable auto indent
vim.o.autoindent = true
vim.o.shiftwidth = 4
-- show line numbers
vim.o.number = true
-- show relative line numbers instead of absolute
vim.o.relativenumber = true
-- auto break long lines (soft only)
vim.o.wrap = true
vim.o.textwidth = 0
vim.o.wrapmargin = 0
-- smart case insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.background = "dark"

vim.o.wildmenu = true
vim.o.wildmode = "longest:full,full"
-- enable highlight groups
vim.opt.termguicolors = true
-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
})
vim.cmd.colorscheme "catppuccin"

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })

require("lualine").setup({
    options = {
        theme = "catppuccin",
    },
})

require("nvim-autopairs").setup({
    check_ts = true,
})

require("nvim-tree").setup({
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

require("nvim-treesitter.configs").setup({
    ensure_installed = { 
        "c", "lua", "vim", "vimdoc", "query", -- recommended, should always be available
        "go", "zig", "java", "kotlin",
        "javascript", "typescript", "html", "css", "tsx",
        "xml", "json", "yaml", "toml"
    },
})
