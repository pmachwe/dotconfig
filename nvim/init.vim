" Taken the following snippet from
" https://stackoverflow.com/a/58137504

let g:nvim_config_root = stdpath('config')
let g:config_file_list = [
    \ 'variables.vim',
    \ 'options.vim',
    \ 'autocommands.vim',
    \ 'mappings.vim',
    \ 'plugins.vim',
    \ 'ui.vim'
    \ ]

for f in g:config_file_list
    let g:full_file_name = g:nvim_config_root . '/' . f
    if filereadable(expand(g:full_file_name))
        echo "Sourcing " . f
        execute 'source ' . g:full_file_name
    else
        echo "File not found " . f
    endif

endfor
