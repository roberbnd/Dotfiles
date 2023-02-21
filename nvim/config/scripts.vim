function ToggleWrap()
 if (&wrap == 1)
   set nowrap
 else
   set wrap
 endif
endfunction

function ToggleMouse()
 if (&mouse == 'a')
   set mouse=
 else
   set mouse=a
 endif
endfunction

function ToggleScrollbind()
 if (&scrollbind == 1)
   set noscrollbind
 else
   set scrollbind
 endif
endfunction

function LongScroll()
  vsplit
  wincmd l
  execute "normal! \<c-f>"
  call ToggleScrollbind()
  wincmd h
  call ToggleScrollbind()
endfunction

function! GetRegisters()
  redir => cout
  silent registers
  redir END
  return split(cout, "\n")[1:]
endfunction

" Clear register
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

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

" When using `dd` in the quickfix list, remove the item from the quickfix list.
function! RemoveQFItem()
  let curqfidx = line('.') - 1
  let qfall = getqflist()
  call remove(qfall, curqfidx)
  call setqflist(qfall, 'r')
  execute curqfidx + 1 . "cfirst"
  :copen
endfunction
command! RemoveQFItem :call RemoveQFItem()
