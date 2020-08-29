Plug 'SidOfc/mkdx', { 'for': 'markdown' }
"{{{======================================================================================
let g:mkdx#settings     = { 'highlight': { 'enable': 1 },
                        \ 'enter': { 'shift': 1 },
                        \ 'links': { 'external': { 'enable': 1 } },
                        \ 'toc': { 'text': 'Table of Contents', 'update_on_write': 1 },
                        \ 'fold': { 'enable': 1 } }
" mkdx.vim is a markdown plugin that aims to reduce
" the time you spend formatting your markdown documents.
" It does this by adding some configurable mappings for
" files with a markdown filetype. Functions are included
" to handle lists, checkboxes (even lists of checkboxes!),
" fenced code blocks, shortcuts, headers and links.
" In addition to that, this plugin provides a mapping to
" convert a selection of CSV data to a markdown table.
" And there's a lot more :D Visit :h mkdx or
" :h mkdx-helptags for more information.
"======================================================================================}}}

"Description {===============================
"}===========================================
Plug 'rickhowe/spotdiff.vim'

" Plug 'mg979/vim-xtabline'

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


"lightline
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
au BufEnter * call vista#RunForNearestMethodOrFunction()

function! UseRegister(line)
  let var_a = getreg(a:line[1], 1, 1)
  let var_amode = getregtype(a:line[1])
  call setreg('"', var_a, var_amode)
endfunction

command! Registers call fzf#run(fzf#wrap({
      \ 'source': GetRegisters(),
      \ 'sink': function('UseRegister')}))

Plug 'christoomey/vim-conflicted'
"{{{======================================================================================
let g:diffget_local_map = 'gl'
let g:diffget_upstream_map = 'gu'
"======================================================================================}}}
" Plug 'christoomey/vim-tmux-navigator'
"{{{======================================================================================
" This plugin provides the following mappings which allow you to move between Vim panes
" and tmux splits seamlessly.
    " <ctrl-h> => Left
    " <ctrl-j> => Down
    " <ctrl-k> => Up
    " <ctrl-l> => Right
    " <ctrl-\> => Previous split
" Note - you don't need to use your tmux prefix key sequence before using the mappings.
let g:tmux_navigator_no_mappings = 1
"======================================================================================}}}

" Plug 'itchyny/lightline.vim'
" "{{{======================================================================================
" " A light and configurable statusline/tabline plugin for Vim
" let g:lightline = {
"       \ 'colorscheme': 'molokai',
"       \ 'active': {
"       \   'left': [
"       \     [ 'mode', 'paste' ],
"       \     [
"       \       'gitbranch',
"       \       'gitstatus',
"       \       'currentfunction',
"       \       'readonly',
"       \       'filename',
"       \       'modified',
"       \       'cocstatus'
"       \     ]
"       \   ],
"       \   'right': [
"       \     [ 'filetype', 'lineinfo', 'blame' ],
"       \     [ 'blame' ]
"       \   ]
"       \ },
"       \ 'component_function': {
"       \   'cocstatus': 'coc#status',
"       \   'gitbranch': 'LightlineGitBranch',
"       \   'gitstatus': 'LightlineGitStatus',
"       \   'blame': 'LightlineGitBlame',
"       \   'currentfunction': 'CocCurrentFunction',
"       \ },
" \ }
" "======================================================================================}}}
" nnoremap M :call lightline#update()<cr>

Plug 'simnalamburt/vim-mundo'

# no muestra color de la syntaxis
Plug 'segeljakt/vim-silicon'
"{{{======================================================================================
" require cargo install silicon bat
" This plugin provides a command which, given a visual selection or buffer, will generate a
" neat looking and highly customizable image of the source code.
let g:silicon = {
      \   'theme':              'Dracula',
      \   'font':                  'Hack',
      \   'background':         '#fff0',
      \   'shadow-color':       '#555555',
      \   'line-pad':                   2,
      \   'pad-horiz':                 80,
      \   'pad-vert':                 100,
      \   'shadow-blur-radius':         0,
      \   'shadow-offset-x':            0,
      \   'shadow-offset-y':            0,
      \   'line-number':           v:true,
      \   'round-corner':          v:true,
      \   'window-controls':       v:true,
      \ }
"======================================================================================}}}
vmap C :Silicon /Users/rbanda/Downloads/
Plug 'scrooloose/nerdtree'
"{{{======================================================================================
let g:NERDTreeMapMenu = '\'
let g:NERDTreeWinSize = 25
let NERDTreeShowHidden=1
" let g:Webdevicons_conceal_nerdtree_brackets = 0
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" Disable arrow icons at the left side of folders for NERDTree.
" let g:NERDTreeDirArrowExpandable = "\u00a0"
" let g:NERDTreeDirArrowCollapsible = "\u00a0"
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
"======================================================================================}}}
nnoremap <leader>hj :NERDTreeToggle<cr>
nnoremap <leader>hk :NERDTreeFind<cr>


"no compatible con markdown
" au Filetype json,vimwiki,markdown,md let g:indentLine_setConceal = 0
" au FileType markdown,notes,vimwiki let b:indentLine_enabled = 0
" autocmd BufEnter *.markdown,*.md,*.vimwiki IndentLinesDisable
Plug 'Yggdroot/indentLine'
" Plug 'lukas-reineke/indent-blankline.nvim'
"{{{======================================================================================
" Displaying thin vertical lines at each indentation leve
let g:indentLine_enabled = 0
"======================================================================================}}}
" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
"======================================================================================}}}
" This project contains Vim configuration files for editing and compiling Ruby within Vim.
" Method [m ]m, Visual am,im,aM(Class)
"{{{======================================================================================

" Plug 'tpope/vim-rails'
"======================================================================================}}}
" Support rails development
"{{{======================================================================================


" con typescript me quita el color
" Plug 'luochen1990/rainbow'
"{{{======================================================================================
let g:rainbow_active = 1
"======================================================================================}}}
"
Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'justinmk/vim-dirvish'
nnoremap <leader>hj :Dirvish %<cr>
nnoremap <leader>hk :Dirvish<cr>
"{{{======================================================================================
"with ranger I can't see long name files
"======================================================================================}}}

Plug 'jlanzarotta/bufexplorer'
"{{{======================================================================================
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowTabBuffer=1
let g:bufExplorerShowRelativePath=1
"======================================================================================}}}
" organized by tabs
nnoremap <leader>rA :BufExplorer<cr>
nnoremap <leader>hf :exe ':silent !firefox %'<cr>
nnoremap <leader>hc :exe ':silent !chromium-browser %'<cr>
nnoremap <leader>vu V=
nnoremap <leader>va V
nmap <leader>ve V<tab><esc>
nmap <leader>vo V<s-tab><esc>

Plug 'juniway/indent-bar'
"{{{======================================================================================
"======================================================================================}}}
let g:indent_bar_set_conceal = 0


Plug 'vitalk/vim-simple-todo'
"{{{======================================================================================
let g:simple_todo_map_keys = 0
"======================================================================================}}}
nmap <leader>mo <Plug>(simple-todo-mark-switch)
nmap <leader>me <Plug>(simple-todo-new-start-of-line)

Plug 'kristijanhusak/vim-dadbod-ui'
"{{{======================================================================================
" Simple UI for vim-dadbod. It allows simple navigation through databases and allows
" saving queries for later use.
"======================================================================================}}}

Plug 'mbbill/undotree'
"{{{======================================================================================
"=======================================================================================}}}

LUA PLUGINS
" Plug 'nvim-treesitter/nvim-treesitter'

Plug 'lambdalisue/fern.vim'
"{{{======================================================================================
"======================================================================================}}}

" Plug 'dense-analysis/ale'
"{{{======================================================================================
let g:ale_enabled = 0
let g:ale_linters_explicit = 1
let g:ale_php_phpcs_standard = ''
let g:ale_php_phpcs_options = ''
let g:ale_php_phpcs_executable = ''
let g:ale_linters = {
\   'php': ['phpcs'],
\}
"======================================================================================}}}

" Plug 'ntpeters/vim-better-whitespace'
"{{{======================================================================================
" This plugin causes all trailing whitespace characters
let g:strip_only_modified_lines=1
"======================================================================================}}}
Plug 'puremourning/vimspector'
"{{{======================================================================================
" Debugger
" let g:vimspector_enable_mappings = 'HUMAN'
sign define vimspectorBP text=🔴 texthl=Normal
sign define vimspectorBPDisabled text=🔵 texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad
"======================================================================================}}}

