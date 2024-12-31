-- barbar
vim.keymap.set("n", "<C-b>", "<Cmd>BufferPick<CR>", { noremap = true, silent = true })

-- neo-tree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-f>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<C-g>", builtin.live_grep, { desc = "Telescope live grep" })

-- nvim-cmp

-- comment
-- toggle current line (linewise)
local api = require("Comment.api")
vim.keymap.set("n", "<C-/>", api.toggle.linewise.current)

-- toggle selection (linewise)
local esc = vim.api.nvim_replace_termcodes("<ESC>", true, false, true)
vim.keymap.set("x", "<C-/>", function()
	vim.api.nvim_feedkeys(esc, "nx", false)
	api.toggle.linewise(vim.fn.visualmode())
end)
