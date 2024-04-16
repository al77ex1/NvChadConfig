require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("i", "jk", "<ESC>")
map("n", "<leader>gg", "<cmd>LazyGit<cr>")
map({ "n", "i", "v" }, "<leader>cb", "<cmd>:%bd!<cr>")
map("n", "cll", "iconsole.log();<Esc>ba")
map("i", "cll", "console.log();<Esc>ba")

map("i", "<C-g>", function()
  return vim.fn["codeium#Accept"]()
end, { expr = true })