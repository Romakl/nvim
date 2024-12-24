local keymap = vim.keymap.set

-- Find group
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find File" })
keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find Text" })
keymap("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find Buffer" })
keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find Help" })

-- Git group
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Open Branches" })
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Open Commits" })
keymap("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Open Status" })

-- Open diagnostic window
keymap("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open Diagnostic Window" })

-- LSP group
keymap("n", "<leader>lD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
keymap("n", "<leader>ld", vim.lsp.buf.definition, { desc = "Go to Definition" })
keymap("n", "<leader>lk", vim.lsp.buf.hover, { desc = "Hover Documentation" })

-- NvimTree group
keymap("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", { desc = "Tree Toggle" })
keymap("n", "<leader>tf", "<cmd>NvimTreeFocus<cr>", { desc = "Tree Focus" })

-- TodoList group
keymap("n", "<leader>nl", "<cmd>TodoQuickFix<cr>", { desc = "Open Todo List" })

-- Open terminal
--keymap("n", "<leader>s", "<cmd>ToggleTerm<cr>", { desc = "Open Terminal" })
-- make height a little bit bigger
keymap("n", "<leader>s", "<cmd>ToggleTerm size=30<cr>", { desc = "Open Terminal" })
-- Run Ruff linter
keymap("n", "<leader>r", "<cmd>Ruff<cr>", { desc = "Run Ruff" })

-- Color Schemes group
keymap("n", "<leader>cs", "<cmd>Telescope colorscheme<cr>", { desc = "Open Color Schemes" })
