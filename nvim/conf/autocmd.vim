" refresh if file changed
au WinEnter,TabEnter,FocusGained * checktime

" folds
" au FileType python,html setlocal foldmethod=indent
" au FileType javascript,css,less,sass,c,cpp setlocal foldmarker={,}

" Types
au BufRead *.sbt set filetype=scala
au BufRead *spec.tsx.snap,*.tsx set filetype=typescript
au BufRead *.babelrc set ft=json
au BufRead *.handlebars,*.hbs,*.ejs set ft=html
augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
augroup END

au FileType lua set sw=2 ts=2

" create keymap to last tab active = ch
au TabLeave * let g:lasttab = tabpagenr()

au InsertEnter * imap ) <bs>
au InsertEnter * tmap ) <bs>
au InsertEnter * inoremap ] <cr>
au InsertEnter * tnoremap ] <cr>
au VimEnter * startinsert
call feedkeys("\<esc>")


set autoindent
