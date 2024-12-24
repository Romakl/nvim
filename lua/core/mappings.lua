vim.g.mapleader = " "

-- Quit using Ctrl+Q
vim.keymap.set('n', '<C-q>', '<cmd>:q<CR>', { desc = "Quit using Ctrl+Q" })

-- Copy all text using Ctrl+A
vim.keymap.set('n', '<C-a>', '<cmd>%y+<CR>', { desc = "Copy all text using Ctrl+A" })

-- Save a file using Ctrl+S
vim.keymap.set('i', '<C-s>', '<cmd>:w<CR>', { desc = "Save a file in insert mode using Ctrl+S" })
vim.keymap.set('n', '<C-s>', '<cmd>:w<CR>', { desc = "Save a file in normal mode using Ctrl+S" })

-- Toggle NvimTree using Leader+t
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { desc = "Toggle NvimTree using Leader+t" })

-- Focus NvimTree using Leader+tf
vim.keymap.set('n', '<leader>tf', ':NvimTreeFocus<CR>', { desc = "Focus NvimTree using Leader+tf" })

-- Cycle to the next buffer using Tab
vim.keymap.set('n','<Tab>', ':BufferLineCycleNext<CR>', { desc = "Cycle to the next buffer using Tab" })

-- Cycle to the previous buffer using Shift+Tab
vim.keymap.set('n','<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = "Cycle to the previous buffer using Shift+Tab" })

-- Close other buffers using Ctrl+L
vim.keymap.set('n', '<C-l>', ':BufferLineCloseOthers<CR>', { desc = "Close other buffers using Ctrl+L" })

-- Open TodoList using Leader+nl
vim.keymap.set('n', '<leader>nl', ':TodoTelescope<CR>', { desc = "Open TodoList using Leader+nl" })

-- Open a floating terminal using Leader+s
vim.keymap.set('n', '<leader>s', ':1ToggleTerm direction=horizontal size=30<CR>', { desc = "Open a horizontal terminal using Leader+s" })

-- Open 3 terminals using Leader1, Leader2, Leader3
vim.keymap.set('n', '<leader>2', ':2ToggleTerm direction=horizontal size=30<CR>', { desc = "Open a horizontal terminal using Leader+2" })
vim.keymap.set('n', '<leader>3', ':3ToggleTerm direction=horizontal size=30<CR>', { desc = "Open a horizontal terminal using Leader+3" })
