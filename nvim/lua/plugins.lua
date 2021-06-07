print("Start loading lua/plugins.lua")

local cmd, fn, g, opt, api = vim.cmd, vim.fn, vim.g, vim.opt, vim.api

require 'paq-nvim' {
    'savq/paq-nvim';  
    'neovim/nvim-lspconfig';
    { 'ms-jpq/chadtree', branch = 'chad', run = [[python3 -m chadtree deps]] };
    { 'nvim-treesitter/nvim-treesitter', run = function() cmd(':TSUpdate') end }
}

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      -- ["foo.bar"] = "Identifier",
    },
  },
}
print("Loaded lua/plugins.lua")
