" refresh if file changed
au BufEnter,FocusGained * checktime

au BufEnter * hi! airline_tabsel gui=bold guibg=#76BA99
au BufEnter * hi airline_tabfill guibg=black
au BufEnter * hi! airline_tab gui=bold guibg=#0096c7 guifg=#000000
au BufEnter * hi! airline_tabmod gui=bold guibg=#e63244 guifg=#000000

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

" https://www.reddit.com/r/neovim/comments/11dmaed/keep_buffer_view_when_you_return_to_file/
" set jumpoptions+=view
augroup SaveWindowViewGroup
  autocmd! BufWinLeave * let b:winview = winsaveview()
  autocmd! BufWinEnter * if exists('b:winview') | call winrestview(b:winview) | unlet b:winview
augroup END

" Put these in an autocmd group, so that you can revert them with:
" ":augroup vimStartup | au! | augroup END"
augroup vimStartup
  au!
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid, when inside an event handler
  " (happens when dropping a file on gvim) and for a commit message (it's
  " likely a different one than last time).
  autocmd BufReadPost *
       \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
    \ |   exe "normal! g`\""
    \ |   exe "hi TSComment gui=italic guifg=#00AAAA"
    \ | endif

augroup END
