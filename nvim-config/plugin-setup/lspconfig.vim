lua require'lspconfig'.clangd.setup{}

" Taken from
" https://www.chrisatmachine.com/Neovim/27-native-lsp/

" LSP config (the mappings used in the default file don't quite work right)
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>L

" auto-format
autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.sh lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.awk lua vim.lsp.buf.formatting_sync(nil, 100)

if !filereadable(expand('~/.work_machine'))
  autocmd BufWritePre *.cpp lua vim.lsp.buf.formatting_sync(nil, 100)
  autocmd BufWritePre *.cc lua vim.lsp.buf.formatting_sync(nil, 100)
  autocmd BufWritePre *.cxx lua vim.lsp.buf.formatting_sync(nil, 100)
  autocmd BufWritePre *.c lua vim.lsp.buf.formatting_sync(nil, 100)
  autocmd BufWritePre *.h lua vim.lsp.buf.formatting_sync(nil, 100)
endif


