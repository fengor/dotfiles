vim.opt.termguicolors = true

vim.pack.add({"https://github.com/rebelot/kanagawa.nvim"})
vim.cmd.colorscheme("kanagawa-wave")

vim.pack.add({"https://github.com/christoomey/vim-tmux-navigator"})
--vim.keymap.set("n", "", "", { desc = "" })
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "Tmux Window left" })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "Tmux Window down" })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "Tmux Window up" })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "Tmux Window right" })

require("options")
require("keymaps")
require("autocmds")
