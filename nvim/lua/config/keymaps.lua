-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fs", "<cmd>w<cr>")
vim.keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<cr>")
vim.keymap.set("n", "gr", "<cmd>Telescope lsp_references<cr>")
vim.keymap.set("n", "<leader>bj", "<cmd>BufferLinePick<cr>")
vim.keymap.set("n", "<leader>wl", "<c-w>l")
vim.keymap.set("n", "<leader>wj", "<c-w>j")
vim.keymap.set("n", "<leader>wh", "<c-w>h")
vim.keymap.set("n", "<leader>wk", "<c-w>k")
-- vim.keymap.set("n", "<C-l>", "<c-w>l")
-- vim.keymap.set("n", "<C-j>", "<c-w>j")
-- vim.keymap.set("n", "<C-h>", "<c-w>h")
-- vim.keymap.set("n", "<C-k>", "<c-w>k")
vim.keymap.set("n", "<leader>bk", "<cmd>bd<cr>")
