
call plug#begin()

Plug 'https://github.com/easymotion/vim-easymotion.git' " <ldr><ldr>w <ldr><ldr>f
Plug 'https://github.com/tc50cal/vim-terminal.git' " :Terminal bash
" Plug 'https://github.com/kien/ctrlp.vim.git' " :CtrlP :CtrlPBuffer :CtrlPMixed
Plug 'https://github.com/tpope/vim-commentary.git' " gcc gc
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

call plug#end()

"nerdtree
"tagbar
"airline
"Telescope
"YCMD?
"Tags?
"Git
"Perforce
"Tmux
"Markdown
"
"vim-makery dispatch.vim (async) :make
