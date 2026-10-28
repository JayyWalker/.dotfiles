-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
	    { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
	    { out, "WarningMsg" },
	    { "\nPress any key to exist..." },
	}, true, {})
	vim.fn.getchar()
	os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- UI
vim.o.showmode = true
vim.o.showcmd = true
vim.o.cursorline = true
vim.o.number = true
vim.o.relativenumber = true

-- Indentation
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Keymaps
local map = vim.keymap.set

map("i", "jj", "<Esc>")
map("n", "<leader><space>", ":nohlsearch<CR>", { silent = true })

require("lazy").setup({
    spec = {
        -- import plugins
	{ import = "plugins" },
    },
    install = { colorscheme = { "habamax" } },
    checker = { enabled = true },
})
