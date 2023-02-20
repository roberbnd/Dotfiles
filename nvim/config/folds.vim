" zf#j creates a fold from the cursor down # lines.
" zf/string creates a fold from the cursor to string.
" zj moves the cursor to the next fold.
" zk moves the cursor to the previous fold.
" zo opens a fold at the cursor.
" zO opens all folds at the cursor.
" zm increases the foldlevel by one.
" zM closes all open folds.
" zr decreases the foldlevel by one.
" zR decreases the foldlevel to zero — all folds will be open.
" zd deletes the fold at the cursor.
" zE deletes all folds.
" [z move to start of open fold.
" ]z move to end of open fold.
" zn All folds will be open.
" zN All folds will be as they were before.

nnoremap <silent> zk :call NextClosedFold('j')<cr>
nnoremap <silent> zj :call NextClosedFold('k')<cr>

function! NextClosedFold(dir)
    let cmd = 'norm!z' . a:dir
    let view = winsaveview()
    let [l0, l, open] = [0, view.lnum, 1]
    while l != l0 && open
        exe cmd
        let [l0, l] = [l, line('.')]
        let open = foldclosed(l) < 0
    endwhile
    if open
        call winrestview(view)
    endif
endfunction

" errors with fzf/float window
" and wait the timeout to be saved
" augroup remember_folds
"   autocmd!
"   autocmd BufEnter *.lua,*.php,*.ruby,*.tsx,*.ts,*.js,*.jsx silent! loadview
"   autocmd BufHidden *.lua,*.php,*.ruby,*.tsx,*.ts,*.js,*.jsx mkview
" augroup END

augroup remember_folds
  autocmd!
  au BufLeave ?* mkview 1
  au BufEnter ?* silent! loadview 1
augroup END
