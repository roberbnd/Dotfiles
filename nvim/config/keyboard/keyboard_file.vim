nnoremap rj :FloatermNew ranger<cr>
nnoremap rc gf
noremap rC :call CreateFile(expand("<cfile>"))<CR>
nnoremap <space>rc <c-w>gf


nnoremap <space>nt :NeoTreeShowToggle<cr>
nnoremap <space>nt :NeoTreeFocusToggle<cr>
nnoremap <space>nrr :NeoTreeReveal<cr>
nnoremap <space>nrt :NeoTreeRevealToggle<cr>

nnoremap <space>fp :echo expand("%")<cr>
nnoremap <space>fr :let @" = expand("%:t")<cr>:Rename<space><c-r>"
nnoremap <space>fD :Delete!<cr>
nnoremap <space>fv :FloatermNew vifm<cr>
nnoremap <space>ff :Files<cr>
nnoremap <space>fn :e ~/vimwiki/index.md<cr>
nnoremap <space>fk :e ~/.config/nvim/config/keyboard/keyboard.vim<cr>
nnoremap <space>ft :e %:h/
nnoremap <space>fq :edit<cr>
nnoremap <space>fQ :edit!<cr>
nnoremap <space>fc :copen<cr>
nnoremap <space>fs :e ~/.config/nvim/snippets/snippy/

