-- Key bindings
vim.keymap.set("n", "<leader>cs", "<cmd>e ~/.config/nvim<CR>", { noremap = true })
vim.keymap.set("n", "<leader>te", "<cmd>ToggleTerm direction=float<CR>", { noremap = true })
vim.keymap.set("n", "<space>fb", "<cmd>Telescope file_browser<CR>", { noremap = true })
vim.keymap.set("n", "<space>ff", "<cmd>Telescope find_files<CR>", { noremap = true })
vim.keymap.set("n", "<space>of", "<cmd>Telescope oldfiles<CR>", { noremap = true })
vim.keymap.set("n", "<leader>fb", "<cmd>NvimTreeToggle<CR>", { noremap = true })
vim.keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { noremap = true })
vim.keymap.set("n", "<C-j>", "<cmd> TmuxNavigateRight<CR>", { noremap = true })
vim.keymap.set("n", "<C-k>", "<cmd> TmuxNavigateDown<CR>", { noremap = true })
vim.keymap.set("n", "<C-l>", "<cmd> TmuxNavigateUp<CR>", { noremap = true })
vim.keymap.set("n", "<space>jbp", "<cmd> BufferLinePick<CR>", { noremap = true })
vim.keymap.set("n", "<space>jbc", "<cmd> BufferLinePickClose<CR>", { noremap = true })
vim.keymap.set("n", "<space>do", "<cmd>lua require('dapui').open()<CR>", { noremap = true })
vim.keymap.set("n", "<space>dq", "<cmd>lua require('dapui').close()<CR>", { noremap = true })
vim.keymap.set("n", "<leader>dtb", "<cmd>DapToggleBreakpoint<CR>", { noremap = true })
vim.keymap.set("n", "<leader>dc", "<cmd>DapContinue<CR>", { noremap = true })
vim.keymap.set("n", "<leader>di", "<cmd>DapStepInto<CR>", { noremap = true })
vim.keymap.set("n", "<leader>dn", "<cmd>DapStepOver<CR>", { noremap = true })
vim.keymap.set("n", "<leader>dq", "<cmdDapTerminate<CR>", { noremap = true })
