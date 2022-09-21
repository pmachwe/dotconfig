" Use QuickFix window  for cscope
:set cscopequickfix=s-,c-,d-,i-,t-,e-,a-

command! -bang -nargs=* CscopeFindAssignments   call cscope#cscope#Cscope("a", <q-args>)
command! -bang -nargs=* CscopeFindCallers       call cscope#cscope#Cscope("c", <q-args>)
command! -bang -nargs=* CscopeFindCalled        call cscope#cscope#Cscope("d", <q-args>)
command! -bang -nargs=* CscopeFindEgrep         call cscope#cscope#Cscope("e", <q-args>)
command! -bang -nargs=* CscopeFindFile          call cscope#cscope#Cscope("f", <q-args>)
command! -bang -nargs=* CscopeFindGlobal        call cscope#cscope#Cscope("g", <q-args>)
command! -bang -nargs=* CscopeFindInclude       call cscope#cscope#Cscope("i", <q-args>)
command! -bang -nargs=* CscopeFindSymbol        call cscope#cscope#Cscope("s", <q-args>)
command! -bang -nargs=* CscopeFindTextString    call cscope#cscope#Cscope("t", <q-args>)
