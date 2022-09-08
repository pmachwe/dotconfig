let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'absolutepath', 'modified', 'p4client' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'whichfunc', 'filetype' ] ],
      \ },
      \ 'component_function': {
      \   'whichfunc': 'GetCurrFunc',
      \   'p4client': 'GetP4Client'
      \ },
      \ }
      
function! GetCurrFunc()
        return tagbar#currenttag('%s','','f')
endfunction

function! GetP4Client()
        let client = getenv('P4CLIENT')
        if client == v:null
                return ""
        else
                return client
        endif
endfunction

set noshowmode
