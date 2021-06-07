print("Start loading lua/keymappings.lua")

local cmd, fn, g, opt, api = vim.cmd, vim.fn, vim.g, vim.opt, vim.api

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to comma
map('n', ',', '<NOP>', { silent = true })
g.mapleader = ","

-- jj to escape insert mode
map('i', 'jj', '<esc>', { silent = true })

-- <leader><space> to toggle search highlights
map('n', '<leader><space>', ':noh<CR>', { silent = true })

-- H and L instead of ^ and $
map('', 'H', '^')
map('',  'L', '$')

-- Disable arrow keys
map('n', '<up>', '<NOP>')
map('n', '<down>', '<NOP>')
map('n', '<left>', '<NOP>')
map('n', '<right>', '<NOP>')
map('i', '<up>', '<NOP>')
map('i', '<down>', '<NOP>')
map('i', '<left>', '<NOP>')
map('i', '<right>', '<NOP>')

-- Ctrl U in insert mode to switch text case of the current word
map('i', '<C-u>', '<esc>mqg~iw`qa')

-- <leader> v/h for vertical/horizontal split
map('', '<leader>h', ':<C-u>split<CR>')
map('', '<leader>v', ':<C-u>vsplit<CR>')

-- <leader>fp to copy the path of current file to clipboard
map('n', '<leader>fp', [[:let @* = expand('%')<CR>]])

-- Buffer navigation
map('n', '<leader>q', ':bp')
map('n', '<leader>w', ':bn')
map('n', '<leader>c', ':bd') -- Close buffer

-- Keep in visual mode after indentation
map('v', '<', '<gv')
map('v', '>', '>gv')

-- J/K to move visual block up/down
map('v', 'J', [[:m '>+1<CR>gv=gv]])
map('v', 'K', [[:m '<-2<CR>gv=gv]])

map('n', '<leader>rl', [[:luafile $MYVIMRC<CR>]])

print("Loaded lua/keymappings.lua")
