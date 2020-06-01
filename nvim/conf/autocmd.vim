au WinEnter,TabEnter,FocusGained * checktime

au FileType python,html setlocal foldmethod=indent
au FileType python setlocal tabstop=4 sts=4 sw=4
au FileType ruby,html,css,scss,sass,typescript,snippets setlocal tabstop=2 sts=2 sw=2
au FileType javascript,javascript.jsx,feature,yaml,vim,json,eruby setlocal tabstop=2 sts=2 sw=2

au FileType javascript,css,less,sass,c,cpp setlocal foldmarker={,}

au BufRead *.sbt set filetype=scala
au BufRead *Spec.js,*_spec.js set filetype=jasmine
au BufRead *.babelrc set ft=json
au BufRead *.handlebars,*.hbs,*.ejs set ft=html

au Filetype json,vimwiki,markdown,md let g:indentLine_setConceal = 0

au InsertEnter * imap ) <bs>
au InsertEnter * inoremap ] <cr>
au VimEnter * startinsert
call feedkeys("\<esc>")
