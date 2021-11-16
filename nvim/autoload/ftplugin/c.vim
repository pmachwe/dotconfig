function ftplugin#c#UpdateTags()
  execute ":!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./"
  echohl StatusLine | echo "C/C++ tag updated" | echohl None
endfunction

