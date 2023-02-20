" https://stackoverflow.com/questions/4251533/vim-keep-window-position-when-switching-buffers
" " keep coursor position moving between hidden buffers
" autocmd BufEnter * silent! normal! g`"
" au BufLeave * let b:winview = winsaveview()
" au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif

" au InsertEnter * imap ) <bs>
" au InsertEnter * tmap ) <bs>
" au InsertEnter * inoremap ] <cr>
" au InsertEnter * tnoremap ] <cr>
" au VimEnter * startinsert
" call feedkeys("\<esc>")

" show workspace and file name
au BufEnter * let g:airline_section_c = matchstr(getcwd(),'\(\a*-\)\?\(\a*-\)\?\a*$') . ' | %t'

