-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- set the Default tab behavior
local opt = vim.opt
--opt.tabstop = 4 -- Display tab characters as 4 spaces
--opt.shiftwidth = 4 -- Use 4 spaces for indentation
vim.opt.formatoptions:append("t") -- Enable text wrapping while typing
opt.textwidth = 100 -- Wrap lines at 80 characters
