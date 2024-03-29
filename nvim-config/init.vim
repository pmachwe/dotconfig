" Plugins {{{

let g:plugin_path = stdpath('data') . '/plugged'
let mapleader = ","

call plug#begin(g:plugin_path)

" FZF {{{{
" :FZF :Files :Buffers :Tags :Marks
Plug 'https://github.com/junegunn/fzf.git', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim.git'           
" }}}}

" Simple tweaks {{{{
Plug 'https://github.com/tpope/vim-commentary.git'        " gcc gc
Plug 'https://github.com/machakann/vim-highlightedyank.git'
Plug 'nelstrom/vim-visual-star-search'
Plug 'https://github.com/haya14busa/is.vim.git'           " Tweak hlsearch
Plug 'https://github.com/junegunn/vim-easy-align.git'     " vipga= gai= :EasyAlign /REGEX/
" Plug 'https://github.com/easymotion/vim-easymotion.git'

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

if has('nvim-0.5')
    Plug 'projekt0n/github-nvim-theme'
    Plug 'hoob3rt/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    Plug 'EdenEast/nightfox.nvim'
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
else
    Plug 'https://github.com/rakr/vim-one.git'
    Plug 'https://github.com/itchyny/lightline.vim.git'      " Lighter status bar
    " Plug 'https://github.com/vim-airline/vim-airline.git'    " Nicer status bar
endif

" Plug 'https://github.com/arcticicestudio/nord-vim.git'   " Nord theme

" }}}}

" Programming {{{{
Plug 'https://github.com/preservim/tagbar.git'           " :TagbarToggle
Plug 'https://github.com/tpope/vim-fugitive.git'         " :Git diff|commit
Plug 'https://github.com/jreybert/vimagit.git'           " Emacs Magit
Plug 'https://github.com/ngemily/vim-vp4.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git', { 'for' : ['c', 'cpp', 'h', 'pl', 'cxx', 'ief', 'py', 'sh', 'awk', 'rs'] }    " Auto close brackets etc
Plug 'https://github.com/tpope/vim-sleuth.git'
" Plug 'https://github.com/airblade/vim-rooter.git'        " Find project root
" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" }}}}

" Utilities {{{{
Plug 'https://github.com/tpope/vim-dispatch.git'         " :Make :Start
Plug 'https://github.com/preservim/nerdtree.git', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/vimwiki/vimwiki.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'https://github.com/junegunn/vim-peekaboo.git'      " Peek registers

if has('nvim-0.5')
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
endif

" }}}}

" LSP and Completion {{{{
if has('nvim-0.5')
    Plug 'neovim/nvim-lspconfig'
    " Plug 'hrsh7th/nvim-compe'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'quangnguyen30192/cmp-nvim-tags'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'
endif
" }}}}

" Trying {{{{
Plug 'https://github.com/voldikss/vim-floaterm.git'
Plug 'https://github.com/ervandew/supertab.git'
" }}}}

call plug#end()

"}}}

" Options {{{
set foldmethod=marker
set ts=4
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
" set autoindent
set number
set relativenumber
set inccommand=split
set hidden
set path+=**
set wildmenu
set wildmode=list:longest,full
set clipboard+=unnamedplus
set grepprg=rg\ --vimgrep\ --smart-case\ --follow\ --search-zip

" }}}

" Autocmd {{{

augroup MyStuff
    autocmd!
    autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" This opens the file at the last open location
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" }}}

" Functions {{{

" " Taken from :help ins-completion
" function! CleverTab()
" 	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
" 		return "\<Tab>"
" 	else
" 		return "\<C-N>"
" 	endif
" endfunction
" inoremap <Tab> <C-R>=CleverTab()<CR>

" }}}

" TBD {{{
" Omnicomplete setup
" Setup globals for easier use of colors in FZF
" Setup FZF for p4 commands
" Setup FZF for grid commands
" }}}

" Configuration {{{
if has('nvim-0.5')
    runtime plugin-setup/lspconfig.vim
    runtime plugin-setup/lsp-python.lua
    runtime plugin-setup/lsp-rust.lua
    " runtime plugin-setup/compe.lua
    runtime plugin-setup/nvim-cmp.lua
    runtime plugin-setup/lualine.lua
    runtime plugin-setup/nightfox.lua
    colorscheme nightfox
else
    runtime plugin-setup/lightline.vim
    colorscheme one
endif
 
if (has("termguicolors"))
  set termguicolors
endif

runtime plugin-setup/fzf.vim
runtime plugin-setup/vimwiki.vim
runtime plugin-setup/tmux-navigator.vim
runtime plugin-setup/cscope.vim
" runtime plugin-setup/easymotion.vim
runtime plugin-setup/p4.vim
runtime plugin-setup/floaterm.vim

runtime local.vim

" }}}

" {{{ Mappings

nnoremap ; :
vnoremap ; :

" Better ways to escape {{{{
" Double press most used motion keys
" Luckily all are uncommon in words
inoremap jj <Esc>
inoremap kk <Esc>
inoremap bb <Esc>
inoremap ww <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
tnoremap <Esc> <C-\><C-n>
" }}}}

" Buffer maniputlation {{{{
" map <leader><leader> :b <C-d>
nnoremap <leader>.        :b#<CR>
nnoremap <A-n>            :tabnext<CR>
nnoremap <A-p>            :tabprevious<CR>

" Taken from
" https://stackoverflow.com/questions/1708623/opening-files-in-the-same-folder-as-the-current-file-in-vim
" nnoremap <leader>e :edit <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <leader>e :FzfFiles %:p:h<CR>
" nnoremap ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
" nnoremap ,s :split <C-R>=expand("%:p:h") . "/" <CR>
" }}}}

" Easier Motion {{{{
nnoremap U <C-u>
nnoremap D <C-d>
" }}}}

" Basic utilities {{{{
nnoremap <A-o> o<Esc>
nnoremap <A-O> O<Esc>

" :up instead of :w because :up only saves
" when there is a change
inoremap <leader>w <Esc>:up<CR>
nnoremap <leader>w :up<CR>

nnoremap <leader>i :e ~/.config/nvim/init.vim<CR>

nnoremap <leader>k :bd<CR>
nnoremap <leader>o :only<CR>

" Avoid quitting by mistake
" cabbrev q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'bd' : 'q')<CR>
" cabbrev Q <c-r>=(getcmdtype()==':' && getcmdpos()==1 ? 'quit' : 'Q')<CR>

" Paste the yanked text and not the
" deleted text
nnoremap <leader>p "0p

" }}}}
"
" Tags Emacs style {{{{
nnoremap <A-.> <C-]>
nnoremap <A-,> <C-t>
" }}}}

" Diff {{{{
command! Difft windo diffthis
command! Diffo windo diffoff
" }}}}

" QuickFix {{{{
nnoremap <leader>qo :copen<CR>
nnoremap <leader>qc :cclose<CR>
nnoremap <leader>qn :cnext<CR>
nnoremap <leader>qp :cprevious<CR>
nnoremap <leader>ql :clast<CR>
nnoremap <leader>qf :cfirst<CR>
nnoremap <leader>qh :chistory<CR>
nnoremap <c-n> :cnext<CR>
nnoremap <c-p> :cprevious<CR>
" }}}}

" Window motion for all modes {{{{
" map <A-h> <C-w>h
" map <A-j> <C-w>j
" map <A-k> <C-w>k
" map <A-l> <C-w>l
" }}}}

" Plugins {{{{
map <f8> :NERDTreeToggle<CR>
map <f7> :TagbarToggle<CR>

nnoremap ,Ga :Git add %<CR>
nnoremap ,GA :Git add
nnoremap ,Gc :Git commit<CR>
nnoremap ,Gd :Git diff<CR>
nnoremap ,Gp :Git push<CR>
nnoremap ,GG :Git add % <bar> Git commit<CR>

" }}}}

" }}}
