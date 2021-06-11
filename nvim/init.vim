"*****************************************************************************
"" Basic Setup
"*****************************************************************************"

lua require('options')
lua require('plugins')
lua require('lsp')
lua require('keymappings')
lua require('autocmds')

let g:make = 'gmake'
if exists('make')
        let g:make = 'make'
endif

"*****************************************************************************
"" Visual Settings
"*****************************************************************************
set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

let g:CSApprox_loaded = 1

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"*****************************************************************************
"" Mappings
"*****************************************************************************
set diffopt+=vertical

" Reload vim configuration
nnoremap <leader>rl :so $MYVIMRC<cr>


