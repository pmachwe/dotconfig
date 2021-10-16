" Plugins {{{

call plug#begin()

" FZF {{{{
" :FZF :Files :Buffers :Tags :Marks
Plug 'https://github.com/junegunn/fzf.git', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim.git'           
source plugin-setup/fzf.vim
" }}}}

" Simple tweaks {{{{
Plug 'https://github.com/tpope/vim-commentary.git'        " gcc gc
Plug 'https://github.com/machakann/vim-highlightedyank.git'
Plug 'nelstrom/vim-visual-star-search'
Plug 'https://github.com/haya14busa/is.vim.git'           " Tweak hlsearch
Plug 'https://github.com/junegunn/vim-easy-align.git'     " vipga= gai= :EasyAlign /REGEX/

Plug 'https://github.com/justinmk/vim-sneak.git'          " Simpler jump than easymotion
let g:sneak#label = 1

" Plug 'https://github.com/unblevable/quick-scope.git'     " Better forward motion using f/F/t/T
" Trigger a highlight in the appropriate direction when pressing these keys:
" let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']

" Plug 'https://github.com/embear/vim-foldsearch.git'
" }}}}

" Themes etc {{{{
" Plug 'https://github.com/arcticicestudio/nord-vim.git'   " Nord theme
" colorscheme nord

" Plug 'https://github.com/vim-airline/vim-airline.git'    " Nicer status bar

Plug 'https://github.com/itchyny/lightline.vim.git'      " Lighter status bar
source plugin-setup/lightline.vim
" }}}}

" Programming {{{{
Plug 'https://github.com/preservim/tagbar.git'           " :TagbarToggle
Plug 'https://github.com/tpope/vim-fugitive.git'         " :Git diff|commit
Plug 'https://github.com/ngemily/vim-vp4.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git', { 'for' : ['c', 'cpp', 'h', 'pl', 'cxx', 'ief'] }    " Auto close brackets etc
" Plug 'https://github.com/airblade/vim-rooter.git'        " Find project root
" }}}}

" Utilities {{{{
Plug 'https://github.com/tpope/vim-dispatch.git'         " :Make :Start
Plug 'https://github.com/preservim/nerdtree.git', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/vimwiki/vimwiki.git'
" }}}}

" TBD {{{{
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" }}}}

call plug#end()

"}}}

" {{{ Mappings

let mapleader = ","
map <leader>k :bd<CR>
map <leader>o :only<CR>
inoremap ,i :e ~/.config/nvim/init.vim<CR>
nnoremap ; :

" Better ways to escape {{{{
" Double press most used motion keys
" Luckily all are uncommon in words
inoremap jj <Esc>
inoremap kk <Esc>
inoremap bb <Esc>
inoremap ww <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
" }}}}

" Buffer maniputlation {{{{
" map <leader><leader> :b <C-d>
nnoremap <leader><leader> :bprevious<CR>
nnoremap <leader>.        :bnext<CR>

nnoremap <A-n>            :tabnext<CR>
nnoremap <A-p>            :tabprevious<CR>

" Taken from
" https://stackoverflow.com/questions/1708623/opening-files-in-the-same-folder-as-the-current-file-in-vim
nnoremap ,e :find <C-R>=expand("%:p:h") . "/" <CR>
nnoremap ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
nnoremap ,s :split <C-R>=expand("%:p:h") . "/" <CR>
" }}}}

" Easier Motion {{{{
nnoremap U <C-u>
nnoremap D <C-d>
" }}}}

" Tags Emacs style {{{{
nnoremap <A-.> <C-]>
nnoremap <A-,> <C-t>
" }}}}

" Diff {{{{
command! Difft windo diffthis
command! Diffo windo diffoff
" }}}}

" QuickFix {{{{
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprevious<CR>
nnoremap <leader>cl :clast<CR>
nnoremap <leader>cf :cfirst<CR>
nnoremap <leader>ch :chistory<CR>
nnoremap <c-n> :cnext<CR>
nnoremap <c-p> :cprevious<CR>
" }}}}

" Window motion for all modes {{{{
map <A-h> <C-w>h
map <A-j> <C-w>j
map <A-k> <C-w>k
map <A-l> <C-w>l
" }}}}

" }}}

" Options {{{
set foldmethod=marker
set ts=4
set expandtab
set smarttab
set autoindent
set number
set relativenumber
set inccommand=split
set hidden
set path+=**
set wildmenu

" }}}

" Autocmd {{{

augroup MyStuff
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" }}}

" Functions {{{

" Taken from :help ins-completion
function! CleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-N>"
	endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

" }}}

" TBD {{{
" Omnicomplete setup
" coc-nvim ccls, pyls
" }}}
