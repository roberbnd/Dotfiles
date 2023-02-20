" definition
nnoremap ,d :lua vim.lsp.buf.definition()<cr>
nnoremap ,D :split<cr>:lua vim.lsp.buf.definition()<cr>
" nnoremap ma :FzfLua lsp_definitions<cr>
nnoremap ,<space> :lua vim.lsp.buf.hover()<cr>
nnoremap ,r :Glance references<cr>
" nnoremap ,r :FzfLua lsp_references<cr>
" nnoremap br :References<cr>
" nnoremap br :FzfLua lsp_references<cr>
nnoremap ,R :lua vim.lsp.buf.rename()<cr>
nnoremap ,t :lua vim.lsp.buf.type_definition()<cr>
" nnoremap m= :lua vim.lsp.buf.formatting()<cr>
nnoremap ,f :lua vim.lsp.buf.format { async = true } <cr>
" vnoremap ,f :lua vim.lsp.buf.format { async = true } <cr>
nnoremap ,i :FzfLua lsp_implementations<cr>
nnoremap <space><up> :lua vim.diagnostic.goto_prev()<cr>
nnoremap <space><down> :lua vim.diagnostic.goto_next()<cr>
nnoremap dj :lua vim.diagnostic.goto_prev()<cr>
nnoremap dk :lua vim.diagnostic.goto_next()<cr>
" nnoremap ,d<up> :lua vim.diagnostic.goto_prev()<cr>
" nnoremap ,d<down> :lua vim.diagnostic.goto_next()<cr>
" nnoremap <space><space>t :TroubleToggle<cr>
nnoremap  ,c :lua vim.lsp.buf.code_action()<cr>

"Menu
nnoremap  <space><space>k :AerialToggle<cr>

" nnoremap rn :FzfLua lsp_document_symbols<cr>
nnoremap ,s :FzfLua lsp_document_symbols<cr>

