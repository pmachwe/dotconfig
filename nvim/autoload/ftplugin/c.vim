function ftplugin#c#UpdateTags()
  execute ":!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./"
  echohl StatusLine | echo "C/C++ tag updated" | echohl None
endfunction

let g:preview_last_word = ""
function ftplugin#c#PreviewTagToggle()
  let l:curr_word = expand("<cword>")
  if l:curr_word == g:preview_last_word
    pclose
    let g:preview_last_word = ""
  else
    execute "ptag" l:curr_word
    let g:preview_last_word = l:curr_word
  endif
endfunction
