
call plug#begin()

Plug 'https://github.com/easymotion/vim-easymotion.git' " <ldr><ldr>w <ldr><ldr>f
Plug 'https://github.com/tc50cal/vim-terminal.git' " :Terminal bash
Plug 'https://github.com/kien/ctrlp.vim.git' " :CtrlP :CtrlPBuffer :CtrlPMixed
Plug 'https://github.com/tpope/vim-commentary.git' " gcc gc

call plug#end()

"{{{ basic setup
"
"set mouse=a

let mapleader = ","
map <leader>k :bd<CR>
map <leader>o :only<CR>
map <leader>t :Terminal bash<CR>
map <leader>f :CtrlP<CR>
map <leader>b :CtrlPBuffer<CR>
map <leader>B :CtrlPMixed<CR>


"}}}

"{{{ easymotion setup
"
" https://github.com/easymotion/vim-easymotion
"
" Replace easymotion to replace vim search
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

"}}}

" Taken from :help ins-completion
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-N>"
	endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

"nerdtree
"tagbar
"airline
"Telescope
"YCMD?
"Tags?
"Git
"Perforce
"Tmux
"Async shell commands like compile
"Markdown
