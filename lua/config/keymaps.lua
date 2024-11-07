-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<Esc>", { desc = "Better escape" })

-- move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
-- paste repeatedly
vim.keymap.set("x", "<leader>p", '"_dP', { desc = "[P]aste repeatedly" })

-- clean ^Ms (windows newlines)
vim.keymap.set("n", ",m", function()
  vim.cmd([[silent! %s/\r//g]])
  vim.cmd([[w]])
  vim.notify("Cleaned all newline characters!", vim.log.levels.INFO, { title = "File Saved" })
end, { remap = false, desc = "Clean ^M", silent = true })
