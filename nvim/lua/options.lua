print("Start loading lua/options.lua")

local cmd, fn, g, opt, api = vim.cmd, vim.fn, vim.g, vim.opt, vim.api

-- Set encoding
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"
opt.fileencodings = "utf-8"

-- Font
opt.guifont = "DejaVuSansMono_Nerd_Font:h11"

-- Enable hidden buffer
opt.hidden = true

-- Showing line number
opt.number = true
opt.relativenumber = true

-- Disable word wrap
opt.wrap = false

-- Backspace behavior
opt.backspace = { 'indent', 'eol', 'start' }

-- Tab
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- Searching
opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

-- File formats
opt.fileformats = { 'unix', 'dos', 'mac' }

-- Shell
local shell = os.getenv('SHELL')
if shell ~= nil then
    opt.shell = shell
else
    opt.shell = '/bin/sh'
end

-- Newly created split will in the right or bottom
opt.splitright = true
opt.splitbelow = true

-- Session management
g.session_directory = "~/.config/nvim/sessions"
g.session_autoload = "no"
g.session_autosave = "no"
g.session_command_aliases = 1

-- Set cursor shape
opt.guicursor = 'n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,sm:block'

-- Set minimum number of screen lines before/after the cursor
opt.scrolloff=6

-- Term color
opt.termguicolors = true

-- Command line completion mode
opt.wildmode = {'list:longest', 'list:full'}

-- Round indent to multiple of shiftwidth
opt.shiftround = true

-- Indentation
g.indentLine_enabled = 1
g.indentLine_concealcursor = 0
g.indentLine_char = '┆'
g.indentLine_faster = 1

-- Status line
opt.laststatus = 2 -- always show the status line
opt.statusline = [[%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\]]

-- Window title
opt.title = true
opt.titleold = 'Terminal'
opt.titlestring = '%F'

-- Autoload the file when it is changed outside of vim and unchanged inside vim
opt.autoread = true

-- Bell
opt.errorbells = false
opt.visualbell = true
-- opt.t_vb = ''

-- No backup when overwriting files
opt.backup = false
opt.writebackup = false

-- More lines for typing commands
opt.cmdheight = 2

-- Having long update time (default 4s) leads to noticable delays and poor UX
opt.updatetime = 300

-- Treesitter folding config
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'

-- Do not load netrw on nvim startup
g.loaded_netrwPlugin = 1

print("Loaded lua/options.lua")

