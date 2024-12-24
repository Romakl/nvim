require("toggleterm").setup({})

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts) -- Move to the left window
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts) -- Move to the bottom window
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts) -- Move to the top window
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts) -- Move to the right window
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts) -- Close the terminal window
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
