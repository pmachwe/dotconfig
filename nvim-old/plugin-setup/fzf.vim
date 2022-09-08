" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_history_dir = '~/.local/share/fzf-history'
" let g:fzf_preview_window = ['down:40%', 'ctrl-/']
" let g:fzf_layout = { 'down': '30%' }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

let g:fzf_command_prefix = 'Fzf'

" Mappings
nnoremap <leader>f :FzfFiles<CR>
nnoremap <leader>b :FzfBuffers<CR>
nnoremap <leader>G :FzfRg<CR>
nnoremap <leader>g :FzfRg %:p:h<CR>
nnoremap <leader>t :FzfBTags<CR>
nnoremap <leader>m :FzfMarks<CR>
nnoremap <leader>h :FzfHistory<CR>
nnoremap <leader>? :FzfHistory/<CR>
nnoremap <leader>h :FzfHistory<CR>
nnoremap <leader>H :FzfHelpTags<CR>
nnoremap <leader>/ :FzfBLines<CR>

map <A-f> :FzfFiles<CR>
map <A-b> :FzfBuffers<CR>

command! -bang -nargs=*  VimwikiFzf
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden ~/vimwiki', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse' }))
nnoremap <leader>ws :VimwikiFzf<CR>

function! TmuxSwitchFzf()
  
  if &background ==# 'dark'
    let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  else
    let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[35m%s\033[0m:\033[32m%s\033[0m\011\033[30m%s\033[0m\n", x,z,$0; }'
  endif

  let opts = {
  \ 'source':  "tmux ls | awk '" . color . "'",
  \ 'options': ['--ansi', '--prompt', '> ',
  \             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
  \             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
  \ 'down': '20%'
  \ }
  function! opts.sink(lines) 
    let data = split(a:lines)
    let window = split(data[0], ":")
    execute 'silent !tmux switch-client -t ' . window[0]
  endfunction
  call fzf#run(opts)
endfunction

nnoremap <leader>T :call TmuxSwitchFzf()<CR>
