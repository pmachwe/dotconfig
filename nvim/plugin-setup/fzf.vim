" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_history_dir = '~/.local/share/fzf-history'
" let g:fzf_preview_window = ['down:40%', 'ctrl-/']
let g:fzf_layout = { 'down': '30%' }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

let g:fzf_command_prefix = 'Fzf'

" Mappings
nnoremap <leader>f :FzfFiles<CR>
nnoremap <leader>b :FzfBuffers<CR>
nnoremap <leader>g :FzfRg<CR>
nnoremap <leader>t :FzfBTags<CR>
nnoremap <leader>m :FzfMarks<CR>
nnoremap <leader>h :FzfHistory<CR>
nnoremap <leader>? :FzfHistory/<CR>
nnoremap <leader>h :FzfHistory<CR>
nnoremap <leader>H :FzfHelpTags<CR>

map <A-f> :FzfFiles<CR>
map <A-b> :FzfBuffers<CR>

command! -bang -nargs=*  VimwikiFzf
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden ~/vimwiki', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse' }))

nnoremap <leader>ws :VimwikiFzf<CR>
