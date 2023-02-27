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
