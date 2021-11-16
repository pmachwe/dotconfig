" Use QuickFix window  for cscope
:set cscopequickfix=s-,c-,d-,i-,t-,e-,a-

" Inspired from https://amitab.github.io/post/fzf
" and https://gist.github.com/dmlary/830597a4e94674fb6b3824260f53d99f

function! Cscope(option, query)
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
  \ 'down': '40%'
  \ }
  function! opts.sink(lines) 
    let data = split(a:lines)
    let file = split(data[0], ":")
    execute 'e ' . '+' . file[1] . ' ' . file[0]
  endfunction
  call fzf#run(opts)
endfunction

nnoremap <leader>cs :call Cscope("s", "<C-R><C-W>")<CR>
nnoremap <leader>cg :call Cscope("g", "<C-R><C-W>")<CR>
nnoremap <leader>cd :call Cscope("d", "<C-R><C-W>")<CR>
nnoremap <leader>cc :call Cscope("c", "<C-R><C-W>")<CR>
nnoremap <leader>ct :call Cscope("t", "<C-R><C-W>")<CR>
nnoremap <leader>ce :call Cscope("e", "<C-R><C-W>")<CR>
nnoremap <leader>cf :call Cscope("f", "<C-R><C-W>")<CR>
nnoremap <leader>ci :call Cscope("i", "<C-R><C-W>")<CR>
nnoremap <leader>ca :call Cscope("a", "<C-R><C-W>")<CR>

nnoremap gr :call Cscope("s", "<C-R><C-W>")<CR>
nnoremap gd :call Cscope("g", "<C-R><C-W>")<CR>

" nnoremap <leader><leader>cs :cscope find s <C-R><C-W><CR>

command! -bang -nargs=* CscopeFindAssignments   call Cscope("a", <q-args>)
command! -bang -nargs=* CscopeFindCallers       call Cscope("c", <q-args>)
command! -bang -nargs=* CscopeFindCalled        call Cscope("d", <q-args>)
command! -bang -nargs=* CscopeFindEgrep         call Cscope("e", <q-args>)
command! -bang -nargs=* CscopeFindFile          call Cscope("f", <q-args>)
command! -bang -nargs=* CscopeFindGlobal        call Cscope("g", <q-args>)
command! -bang -nargs=* CscopeFindInclude       call Cscope("i", <q-args>)
command! -bang -nargs=* CscopeFindSymbol        call Cscope("s", <q-args>)
command! -bang -nargs=* CscopeFindTextString    call Cscope("t", <q-args>)

nnoremap <Leader>cG :CscopeFindGlobal<SPACE>
nnoremap <Leader>cC :CscopeFindCallers<SPACE>
nnoremap <Leader>cF :CscopeFindFile<SPACE>
nnoremap <Leader>cT :CscopeFindTextString<SPACE>
nnoremap <Leader>cS :CscopeFindSymbol<SPACE>
