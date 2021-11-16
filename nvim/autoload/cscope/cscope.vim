" Inspired from https://amitab.github.io/post/fzf
" and https://gist.github.com/dmlary/830597a4e94674fb6b3824260f53d99f
" Updated to using fzf#vim#grep for preview because the above functions
" do not support preview.

function cscope#cscope#Cscope(option, query)
  let codes = {'s': '0', 'g': '1', 'd': '2', 'c': '3', 't': '4', 'e': '6', 'f': '7', 'i': '8', 'a': '9'}
  if &background ==# 'dark'
    let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[34m%s\033[0m:\033[31m%s:\033[0m\011\033[37m%s\033[0m\n", x,z,$0; }'
  else
    let color = '{ x = $1; $1 = ""; z = $3; $3 = ""; printf "\033[35m%s\033[0m:\033[32m%s:\033[0m\011\033[30m%s\033[0m\n", x,z,$0; }'
  endif
  let cmd = "cscope -dL" . codes[a:option] . " " . a:query . " | awk '" . color . "'"
  " second argument is 0 as cscope does not provide columns
  " fourth argument is 1 which means show fullscreen
  call fzf#vim#grep(cmd, 0, fzf#vim#with_preview({'options': ['--select-1']}), 1)
endfunction

