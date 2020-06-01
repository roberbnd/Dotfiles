set diffopt=filler,internal,algorithm:histogram,indent-heuristic,vertical
Plug 'Rigellute/rigel'
" Plug 'nathanaelkane/vim-indent-guides', { 'on': 'IndentGuidesToggle' }
"{{{======================================================================================
" let g:indent_guides_auto_colors = 0
" let g:indent_guides_guide_size = 1
"======================================================================================}}}
"

"Description {===============================
"}===========================================
Plug 'rickhowe/spotdiff.vim'


Plug 'vim-airline/vim-airline'
"{{{======================================================================================
let g:airline_powerline_fonts = 1
let g:airline_section_c = '%t'
let g:airline_section_z = '%l:%c'
let g:airline_section_y = ''
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#fnamemod = ':t:r'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
"======================================================================================}}}

"Description {===============================
" jsdoc.vim generates JSDoc block comments
" based on a function signature.
"}===========================================
Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }

"ALE
"==========================================
let g:ale_enabled = 1
let g:ale_sign_column_always = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_html_tidy_options = '--custom-tags blocklevel'
let g:ale_fixers = {
      \ 'javascript': ['prettier', 'standard'],
      \ 'python': 'yapf',
      \}

"rustup{{{================================================================================
" A thin wrapper for calling rustup from Vim
Plug 'ubnt-intrepid/rustup.vim', { 'for': 'rust' }
"======================================================================================}}}

"vim-racer{{{=============================================================================
" This plugin allows vim to use Racer for Rust code completion and navigation.
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
let g:racer_cmd = "~/.cargo/bin/racer"
"======================================================================================}}}

Plug 'skywind3000/vim-quickui'
"{{{======================================================================================
" menu like turboc
" https://github.com/skywind3000/vim-quickui/blob/master/MANUAL.md
call quickui#menu#install('&Debugger', [
	    \ ['Step Ou&t', 'call vimspector#StepOut()']
	    \ ])
"======================================================================================}}}

" Plug 'roberbnd/vim-filewatcher', { 'dir': '~/.filewatcher', 'do': 'go get -d && go build' }
Plug 'roberbnd/vim-filewatcher'
"{{{======================================================================================
" start watch the change of directory.
" let watcher = filewatcher#watch(".", {x,y->execute('echo y',0)})
" stop the watching.
" call watcher.stop()
"======================================================================================}}}

Plug 'Yggdroot/indentLine'
Plug 'lukas-reineke/indent-blankline.nvim'
"{{{======================================================================================
" Displaying thin vertical lines at each indentation leve
let g:indentLine_enabled = 0
"======================================================================================}}}
autocmd FileType markdown,notes,vimwiki let b:indentLine_enabled = 0
autocmd BufEnter *.markdown,*.md,*.vimwiki IndentLinesDisable
nnoremap <F8> :IndentLinesEnable<CR>
hi IndentGuidesOdd  guibg=#303030
hi IndentGuidesEven guibg=#5e605f

"lightline
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
au BufEnter * call vista#RunForNearestMethodOrFunction()

" au BufEnter * colorscheme sublimemonokai
" au BufEnter *.php colorscheme PaperColor
" au BufEnter * hi EasyMotionTarget gui=bold guifg=#FFFF00
" au BufEnter * hi EasyMotionShade guifg=#607D8B
" au BufEnter * hi Comment cterm=italic gui=italic
" au BufEnter * hi Pmenu guibg=#333 guifg=#000
" au BufEnter * hi PmenuSel guifg=#242424 guibg=#24D5EF
" au BufEnter * hi CocInfoFloat guifg=#000000
" au BufEnter * :SeiyaEnable
" au BufEnter * colorscheme sublimemonokai
" au BufEnter *.php colorscheme PaperColor

function! UseRegister(line)
  let var_a = getreg(a:line[1], 1, 1)
  let var_amode = getregtype(a:line[1])
  call setreg('"', var_a, var_amode)
endfunction

command! Registers call fzf#run(fzf#wrap({
      \ 'source': GetRegisters(),
      \ 'sink': function('UseRegister')}))

" Plug 'vimwiki/vimwiki'
"{{{======================================================================================
let g:vimwiki_table_mappings=0
" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
"======================================================================================}}}
