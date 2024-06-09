-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("i", "<A-l>", "<Esc>:lua require('neogen').jump_next<CR>", opts)
vim.api.nvim_set_keymap("i", "<A-h>", "<Esc>:lua require('neogen').jump_prev<CR>", opts)
