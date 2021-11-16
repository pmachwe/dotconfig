" Inspired from https://amitab.github.io/post/fzf
" and https://gist.github.com/dmlary/830597a4e94674fb6b3824260f53d99f

function cscope#cscope#Cscope(option, query)
  let codes = {'s': '0', 'g': '1', 'd': '2', 'c': '3', 't': '4', 'e': '6', 'f': '7', 'i': '8', 'a': '9'}
  
  if &background ==# 'dark'
    let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  else
    let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[35m%s\033[0m:\033[32m%s\033[0m\011\033[30m%s\033[0m\n", x,z,$0; }'
  endif

  let opts = {
  \ 'source':  "cscope -dL" . codes[a:option] . " " . a:query . " | awk '" . color . "'",
  \ 'options': ['--ansi', '--prompt', '> ',
  \             '--multi', '--bind', 'alt-a:select-all,alt-d:deselect-all',
  \             '--color', 'fg:188,fg+:222,bg+:#3a3a3a,hl+:104'],
  \ }
  function! opts.sink(lines) 
    let data = split(a:lines)
    let file = split(data[0], ":")
    execute 'e ' . '+' . file[1] . ' ' . file[0]
  endfunction
  call fzf#run(opts)
endfunction
  " \ 'down': '40%'

