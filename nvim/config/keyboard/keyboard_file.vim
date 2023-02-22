nnoremap <space>fD :Delete!<cr>
nnoremap <space>fv :FloatermNew vifm<cr>
nnoremap rj :FloatermNew ranger<cr>
nnoremap <space>fr :let @" = expand("%:t")<cr>:Rename<space><c-r>"

nnoremap rc gf
noremap rC :call CreateFile(expand("<cfile>"))<CR>
nnoremap <space>rc <c-w>gf

nnoremap <space>ff :Files<cr>

nnoremap <space>nt :NeoTreeShowToggle<cr>
nnoremap <space>nt :NeoTreeFocusToggle<cr>

nnoremap <space>nrr :NeoTreeReveal<cr>
nnoremap <space>nrt :NeoTreeRevealToggle<cr>

nnoremap <space>ft :e %:h/
nnoremap <space>fq :edit<cr>
nnoremap <space>fQ :edit!<cr>
nnoremap <space>fc :copen<cr>
nnoremap <space>fs :e ~/.config/nvim/snippets/snippy/
