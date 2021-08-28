
call plug#begin()

Plug 'https://github.com/easymotion/vim-easymotion.git'  " <ldr><ldr>w <ldr><ldr>f
Plug 'https://github.com/tc50cal/vim-terminal.git'       " :Terminal bash
Plug 'https://github.com/tpope/vim-commentary.git'       " gcc gc
Plug 'https://github.com/junegunn/fzf.git', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim.git'           " :FZF :Files :Buffers :Tags :Marks
Plug 'https://github.com/airblade/vim-rooter.git'        " Find project root
Plug 'https://github.com/tpope/vim-dispatch.git'         " :Make :Start
Plug 'https://github.com/junegunn/vim-easy-align.git'    " vipga= gai= :EasyAlign /REGEX/
Plug 'https://github.com/preservim/tagbar.git'           " :TagbarToggle
Plug 'https://github.com/tpope/vim-fugitive.git'         " :Git diff|commit
Plug 'https://github.com/preservim/nerdtree.git'         " :NERDTreeToggle
Plug 'https://github.com/vim-airline/vim-airline.git'    " Nicer status bar

call plug#end()

"Telescope
"YCMD?
"Tags?
"Perforce vim-vp4 vs https://github.com/nfvs/vim-perforce
"Tmux
"Markdown
"Limelight
"vim-makery dispatch.vim (async) :make
"Tabbar tabline
