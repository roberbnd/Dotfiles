" refresh if file changed
au BufEnter,FocusGained * checktime

au! BufRead,BufNewFile *.sbt set filetype=scala
au! BufRead,BufNewFile *.pryrc set filetype=ruby
au! BufRead,BufNewFile *spec.tsx.snap set filetype=typescript
au! BufRead,BufNewFile *.babelrc set ft=json
au! BufRead,BufNewFile *.handlebars,*.hbs,*.ejs set ft=html
au! BufRead,BufNewFile *.proto set filetype=proto
au! BufRead,BufNewFile *.md set filetype=markdown
au BufRead *.log set filetype=json

augroup ReactFiletypes
  autocmd!
  autocmd BufRead,BufNewFile *.jsx,*.js set filetype=javascriptreact
  autocmd BufRead,BufNewFile *.tsx,*.ts set filetype=typescriptreact
augroup END

au FileType http,ruby,html,lua,json,javascriptreact,typescript,typescriptreact set tabstop=2 shiftwidth=2
au FileType css,scss set tabstop=2 shiftwidth=2
au FileType php,proto set tabstop=4 shiftwidth=4
au FileType javascript set tabstop=2 shiftwidth=2

" create keymap to last tab active = ch
au TabLeave * let g:lasttab = tabpagenr()

" Keep border color in tmux panel
silent exec "!tmux set -g pane-active-border-style 'fg=blue,bg=blue'"

au FileType markdown,vimwiki set conceallevel=0
