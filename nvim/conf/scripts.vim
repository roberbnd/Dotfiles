fu! CustomFoldText()
  let fs = v:foldstart
  while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
  endwhile
  if fs > v:foldend
    let line = getline(v:foldstart)
  else
    let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
  endif
  let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
  let foldSize = 1 + v:foldend - v:foldstart
  let foldSizeStr = " " . foldSize . " lines "
  let foldLevelStr = repeat("+--", v:foldlevel)
  let lineCount = line("$")
  let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
  let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
  return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf

" Finds the Git super-project directory.
function! g:BMWorkDirFileLocation()
  let filename = 'bookmarks'
  let location = ''
  if isdirectory('.git')
    " Current work dir is git's work tree
    let location = getcwd().'/.git'
  else
    " Look upwards (at parents) for a directory named '.git'
    let location = finddir('.git', '.;')
  endif
  if len(location) > 0
    return location.'/'.filename
  else
    return getcwd().'/.'.filename
  endif
endfunction

" Clear register
command! WipeReg for i in range(34,122) | silent! call setreg(nr2char(i), []) | endfor

function ToggleWrap()
 if (&wrap == 1)
   set nowrap
 else
   set wrap
 endif
endfunction

"lightline
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

"lightline
function! CocCurrentFunction()
    return get(b:, 'coc_current_function', '')
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  " return blame
  return winwidth(0) > 120 ? blame : ''
endfunction

function! LightlineGitStatus() abort
  let status = get(b:, 'coc_git_status', '')
  return winwidth(0) > 80 ? trim(status) : ''
endfunction

function! LightlineGitBranch() abort
  let branch = get(g:, 'coc_git_status', '')
  return winwidth(0) > 60 ? branch : ''
endfunction
