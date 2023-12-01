nnoremap cj :Bclose<cr>
nnoremap ck :Bclose!<cr>
nnoremap rj :FloatermNew ranger<cr>
nnoremap rc gf
noremap rC :call CreateFile(expand("<cfile>"))<CR>
function! CreateFile(tfilename)

    " complete filepath from the file where this is called
    let newfilepath=expand('%:p:h') .'/'. expand(a:tfilename)

    if filereadable(newfilepath)
       echo "File already exists"
       :norm gf
    else
        :execute "!touch ". expand(newfilepath)
        echom "File created: ". expand(newfilepath)
        :norm gf
    endif

endfunction

nnoremap <space>rc <c-w>gf
nnoremap <space>bc :Bclose<cr>
nnoremap <space>bC :Bclose!<cr>
nnoremap <space>bd :Bdelete menu<cr>
nnoremap <space>bD :Delete!<cr>

" nnoremap <space>bp <c-^>
nnoremap <space>bp :b#<cr>
nnoremap rh :b#<cr>

" buffer search
" I can paste to search and showed it in the tab opened
" nnoremap ra :Buffers<cr>
" jump buffer in same tab without jump
nnoremap b :FzfLua buffers<cr>

" show buffer full path
nnoremap <space>bN :echo expand('%')<cr>
" nnoremap ru :BLines<cr>
nnoremap <space>bl :FzfLua blines<cr>
" nnoremap ri :Lines<cr>
nnoremap <space>bL :FzfLua lines<cr>
nnoremap <space>bm :MaximizerToggle<cr>

nnoremap <space>bw :StripWhitespaceOnChangedLines<cr>
nnoremap <space>bW :StripWhitespace<cr>

nnoremap <space>bh :nohlsearch<cr>

nnoremap <space>br :let @" = expand("%:t")<cr>:Rename<space><c-r>"
nnoremap <space>bk :e ~/.config/nvim/config/keyboard/keyboard.vim<cr>
nnoremap <space>bo :e %:h/
nnoremap <space>be :edit<cr>
nnoremap <space>bE :edit!<cr>
nnoremap <space>bC :copen<cr>
nnoremap <space>bs :e ~/.config/nvim/snippets/snippy/
