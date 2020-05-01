colorscheme sublimemonokai
hi Comment cterm=italic gui=italic

hi CocInfoFloat guifg=#000000
hi EasyMotionTarget gui=bold guifg=#FFFF00
hi EasyMotionShade guifg=#607D8B

hi DiffAdd guibg=#181818
hi DiffDelete guibg=#0000 guifg=#DD283C
hi DiffChange guibg=#181818

autocmd FileType python,html setlocal foldmethod=indent
autocmd FileType python setlocal tabstop=4 sts=4 sw=4

autocmd BufRead,BufNewFile *.sbt set filetype=scala
autocmd BufEnter *Spec.js,*_spec.js set filetype=jasmine
autocmd FileType javascript,css,less,sass,c,cpp setlocal foldmarker={,}

autocmd FileType ruby,html,css,scss,sass,typescript,snippets setlocal tabstop=2 sts=2 sw=2
autocmd FileType javascript,javascript.jsx,feature,yaml,vim,json,eruby setlocal tabstop=2 sts=2 sw=2

autocmd BufNewFile,BufReadPre *.babelrc set ft=json
autocmd BufNewFile,BufReadPre *.handlebars set ft=html
autocmd BufNewFile,BufReadPre *.hbs,*.ejs set ft=html
autocmd Filetype json let g:indentLine_setConceal = 0

autocmd InsertEnter * imap ) <bs>
autocmd InsertEnter * inoremap ] <cr>
au VimEnter * startinsert
call feedkeys("\<esc>")
