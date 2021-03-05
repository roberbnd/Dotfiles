" refresh if file changed
au WinEnter,TabEnter,FocusGained * checktime

" folds
au FileType python,html setlocal foldmethod=indent
au FileType javascript,css,less,sass,c,cpp setlocal foldmarker={,}

" Types
au BufRead *.sbt set filetype=scala
au BufRead *spec.tsx.snap,*.tsx set filetype=typescript
au BufRead *Spec.js,*_spec.js set filetype=jasmine
au BufRead *.babelrc set ft=json
au BufRead *.handlebars,*.hbs,*.ejs set ft=html
augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx set filetype=typescriptreact
augroup END

" create keymap to last tab active = ch
au TabLeave * let g:lasttab = tabpagenr()

au InsertEnter * imap ) <bs>
au InsertEnter * tmap ) <bs>
au InsertEnter * inoremap ] <cr>
au InsertEnter * tnoremap ] <cr>
au VimEnter * startinsert
call feedkeys("\<esc>")

" omit the path file as string to search
" command! -bang -nargs=* Rg call fzf#vim#grep(
"             \ "rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
"             \ 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}),
"             \ <bang>0 )
