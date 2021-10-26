set ts=4
set shiftwidth=4
set softtabstop=2
set expandtab
set smarttab

compiler gcc
setlocal makeprg=g++\ --std=c++17\ -o\ %:r\ %

" Taken from https://aufather.wordpress.com/2010/08/26/omni-completion-in-vim/
if !has('nvim-0.5')
  set omnifunc=syntaxcomplete#Complete " override built-in C omnicomplete with C++ OmniCppComplete plugin
  let OmniCpp_GlobalScopeSearch   = 1
  let OmniCpp_DisplayMode         = 1
  let OmniCpp_ShowScopeInAbbr     = 0 "do not show namespace in pop-up
  let OmniCpp_ShowPrototypeInAbbr = 1 "show prototype in pop-up
  let OmniCpp_ShowAccess          = 1 "show access in pop-up
  let OmniCpp_SelectFirstItem     = 1 "select first item in pop-up
  set completeopt=menuone,menu,longest
endif

function! UpdateTags()
  execute ":!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ./"
  echohl StatusLine | echo "C/C++ tag updated" | echohl None
endfunction

nnoremap <buffer> <F4> :call UpdateTags()
nnoremap <buffer> <F5> :make<CR>
