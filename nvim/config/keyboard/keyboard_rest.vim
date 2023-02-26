" run the request under the cursor
au FileType http nnoremap <buffer> rr <Plug>RestNvim
au FileType http nnoremap <buffer> <cr> <Plug>RestNvim
" preview the request cURL command
au FileType http nnoremap <buffer> rw <Plug>RestNvimPreview
" re-run the last request
au FileType http nnoremap <buffer> rl <Plug>RestNvimLast
