https://github.com/esensar/nvim-dev-container
https://github.com/mzarnitsa/psql
https://www.reddit.com/r/neovim/comments/v0v7bi/workflow_for_devops_ansible_terraform_kubernets/
https://www.reddit.com/r/neovim/comments/v31ft4/best_git_integration_for_neovim/
https://github.com/rcarriga/neotest
samjwill/nvim-unception
" https://www.reddit.com/r/neovim/comments/114avdf/netman_v11_is_complete/
" Plug 'miversen33/netman.nvim'
" Plug 'stevearc/oil.nvim'
" Plug 'antosha417/nvim-lsp-file-operations'

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

https://github.com/epk/SF-Mono-Nerd-Font

Plug 'preservim/nerdtree'
"{{{======================================================================================
let g:NERDTreeMapMenu = '\'
let g:NERDTreeWinSize = 50
let NERDTreeShowHidden=1
" let g:Webdevicons_conceal_nerdtree_brackets = 0
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" Disable arrow icons at the left side of folders for NERDTree.
" let g:NERDTreeDirArrowExpandable = "\u00a0"
" let g:NERDTreeDirArrowCollapsible = "\u00a0"
" let NERDTreeMinimalUI = 1
" let NERDTreeDirArrows = 1
"======================================================================================}}}
nnoremap <space><space>j :NERDTreeToggle<cr>
nnoremap <space><space>J :NERDTreeFind<cr>
" Plug 'tanvirtin/vgit.nvim', { 'branch': 'main' }
"{{{======================================================================================
"requires plenary
"======================================================================================}}}

" Plug 'ldelossa/litee.nvim', { 'branch': 'main' }
" Plug 'ldelossa/calltree.nvim', { 'branch': 'main' }
"{{{======================================================================================
"======================================================================================}}}

Plug 'weilbith/nvim-code-action-menu'
Plug 'SirVer/ultisnips'
"{{{======================================================================================
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsJumpBackwardTrigger="<c-w>"
let g:UltiSnipsJumpForwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories="~/.config/nvim/"
"======================================================================================}}}


" Plug 'petertriho/nvim-scrollbar'
"{{{======================================================================================
"======================================================================================}}}

Plug 'codcodog/simplebuffer.vim'
"{{{======================================================================================
"======================================================================================}}}
"=========================================================================================
"{{{======================================================================================
let g:conflict_marker_enable_mappings = 0
" <<<<<<< HEAD
" ourselves
" =======
" themselves
" >>>>>>> deadbeef0123
" ct or :ConflictMarkerThemselves; branch to merge
" co or :ConflictMarkerOurselves; local branch
" cb or :ConflictMarkerBoth
" cn or :ConflictMarkerNone
" [x and ]x Jump among Conflict Markers
"======================================================================================}}}

" Plug 'ldelossa/litee.nvim'
" Plug 'ldelossa/gh.nvim'
"{{{======================================================================================
"requires litee.nvim
"======================================================================================}}}

" Plug 'kyazdani42/nvim-tree.lua'
"{{{======================================================================================
"======================================================================================}}}

" nnoremap <space><space> :MruRepos<cr>
" Plug 'ilAYAli/scMRU.nvim'
"{{{======================================================================================
"======================================================================================}}}

" Plug 'ldelossa/litee.nvim'
"{{{======================================================================================
"required by gh.nvim
"======================================================================================}}}


" Plug 'tpope/vim-rails'
"{{{======================================================================================
"======================================================================================}}}
"=========================================================================================
" Neovim plugins lua
"=========================================================================================
"=========================================================================================
" Plug 'https://gitlab.com/yorickpeterse/nvim-dd.git', {'branch': 'main'}
" Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
"{{{======================================================================================
"======================================================================================}}}

" Plug 'jmckiern/vim-venter', { 'on': 'VenterToggle' }
"{{{======================================================================================
let g:venter_width=&columns/6
"======================================================================================}}}

Plug 'jlanzarotta/bufexplorer'
"{{{======================================================================================
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerShowTabBuffer=1
let g:bufExplorerShowRelativePath=1
"======================================================================================}}}
nmap bo :BufExplorer<cr>w

" Plug 'b3nj5m1n/kommentary', { 'branch': 'main' }
" Plug 'tpope/vim-commentary'
" Plug 'stevearc/aerial.nvim'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'

Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'

Plug 'tpope/vim-endwise'

plug 'windwp/windline.nvim'

Plug 'nvim-lua/plenary.nvim'
Plug 'tanvirtin/vgit.nvim', { 'branch': 'main' }
"{{{======================================================================================
"======================================================================================}}}


Plug 'ray-x/lsp_signature.nvim'
Plug 'steelsojka/completion-buffers'
Plug 'nvim-lua/completion-nvim'
"{{{======================================================================================
" completion-nvim is an auto completion framework that aims to provide a better
" completion experience with neovim's built-in LSP. Other LSP functionality is
" not supported.
" use <c-x><c-f> path completition menu
let g:completion_enable_snippet = 'UltiSnips'
let g:completion_trigger_keyword_length = 1
" Completion-buffers
let g:completion_chain_complete_list = [{'complete_items': ['lsp', 'snippet', 'buffer']}]
let g:completion_sorting='none'
"======================================================================================}}}

Plug 'rbgrouleff/bclose.vim'

" Plug 'mhinz/vim-signify'
"{{{======================================================================================
" let g:signify_sign_add = '😎'
"======================================================================================}}}
Plug 'kana/vim-textobj-user'
"{{{======================================================================================
" vim-textobj-user is a Vim plugin to create your own text objects.
"======================================================================================}}}

Plug 'kana/vim-textobj-function'
"{{{======================================================================================
" daf to Delete A Function, and
" vif to Visually select the code Inside a Function.
" yaF to Yank A Function with leading or trailing blank lines, and
" viF to visually select a function without leading or trailing blank lines.
"======================================================================================}}}

Plug 'thalesmello/vim-textobj-multiline-str', { 'for': 'python' }
"{{{======================================================================================
" aq: around multiline string. Gets the string contents and the quotes.
" iq: inner multiline string. Gets the string contents without the quotes and immediate linebreaks.
"======================================================================================}}}

Plug 'beloglazov/vim-textobj-punctuation'
"{{{======================================================================================
" vim-textobj-eunctuation is a Vim plugin providing text objects iu and au (u stands for
" pUnctuation, as p is already taken for paragraphs) for capturing the text between the current
" cursor position and a punctuation character in front. This punctuation character can be
" one of: ,, ., :, ;, !, and ?.  The text object can span multiple lines to reach the closest
" punctuation character. Some examples (the cursor is shown with |):
" Before: String |foo = "bar";; after pressing diu: String |;
" Before: if |i == 42:; after pressing diu: if |:
" xmap u iu
" omap u iu
"{{{======================================================================================

" Plug 'jeetsukumaran/vim-pythonsense', { 'for': 'python'}
"{{{======================================================================================
"]]" : Move (forward) to the beginning of the next Python class.
"][" : Move (forward) to the end of the current Python class.
"[[" : Move (backward) to beginning of the current Python class
"(or beginning of the previous Python class if not currently
"in a class or already at the beginning of a class).
"[]" : Move (backward) to end of the previous Python class.
"]m" : Move (forward) to the beginning of the next Python method or function.
"]M" : Move (forward) to the end of the current Python method or function.
"[m" : Move (backward) to the beginning of the current Python
"method or function (or to the beginning of the previous method
"or function if not currently in a method/function or already
"at the beginning of a method/function).
"[M" : Move (backward) to the end of the previous Python
"method or function.
"======================================================================================}}}

Plug 'thalesmello/vim-textobj-methodcall', { 'for': 'javascript'}
"{{{======================================================================================
" am: around method call. Gets the method call of the surrounding scope.
" im: inner method call. Gets the method call of the current scope.
" aM: around method call chain. Gets the method call chain of the surrounding scope.
" iM: inner method call chain. Gets the method call chain of the current scope.
"======================================================================================}}}

Plug 'wellle/targets.vim'
"{{{======================================================================================
" Targets.vim is a Vim plugin that adds various text objects to give you more targets to
" operate on. It expands on the idea of simple commands like di' (delete inside the single
" quotes around the cursor) to give you more opportunities to craft powerful commands that
" can be repeated reliably. One major goal is to handle all corner cases correctly.
"======================================================================================}}}

Plug 'michaeljsmith/vim-indent-object'
"{{{======================================================================================
" This plugin defines two new text objects. These are very similar - they differ only in
" whether they include the line below the block or not.
" Key bindings 	Description
" <count>ai 	An Indentation level and line above.
" <count>ii 	Inner Indentation level (no line above).
" <count>aI 	An Indentation level and lines above/below.
" <count>iI 	Inner Indentation level (no lines above/below).
" Note: the iI mapping is mostly included simply for completeness, it is effectively a synonym for ii.
" Just like regular text objects, these mappings can be used either with operators expecting
" a motion, such as d or c, as well as in visual mode.
" In visual mode the mapping can be repeated, which has the effect of iteratively increasing
" the scope of indentation block selected. Specifying a count can be used to achieve the same effect.
"======================================================================================}}}

Plug 'pierreglaser/folding-nvim'
    " require'folding'.on_attach()
" -- Pairs
" -- require'pears'.setup()
" Plug 'steelsojka/pears.nvim'
"{{{======================================================================================
" Pairs characters
"======================================================================================}}}

Plug 'mbbill/undotree'
"{{{======================================================================================
"=======================================================================================}}}

Plug 'vim-scripts/tcd.vim', { 'on': 'Tcd' }
"{{{======================================================================================
"======================================================================================}}}

Plug 'tpope/vim-eunuch'
"{{{======================================================================================
" Rename
"======================================================================================}}}
Plug 'kkoomen/vim-doge'
"{{{======================================================================================
let g:doge_enable_mappings = 0
"======================================================================================}}}


nnoremap gb :MerginalToggle<cr>
Plug 'idanarye/vim-merginal', { 'branch': 'develop' }
"{{{======================================================================================
"requires fugitive
"======================================================================================}}}

" inoremap ( ()<left>
" inoremap { {}<left>
" inoremap [ []<left>
" inoremap ' ''<left>
" inoremap " ""<left>
" inoremap ` ``<left>
" inoremap < <><left>


" 

" Plug 'p00f/nvim-ts-rainbow'
"{{{======================================================================================
" Rainbow parentheses for neovim using tree-sitter. Needs nvim-treesitter.
"======================================================================================}}}


"{{{======================================================================================
"======================================================================================}}}

"=========================================================================================
"#########################################################################################
"=========================================================================================

"=========================================================================================
"Never use
"=========================================================================================

" Doesn't work
Plug 'axelf4/vim-strip-trailing-whitespace'
"{{{======================================================================================
" Vim plugin that removes trailing whitespace
" from modified lines: Should not introduce extraneous changes into the diff,
" even when editing faulty files.  For fixing up the whole file the command
" :StripTrailingWhitespace is provided.  on save: Lines changing under you feet breaks any
" flow and is a compatibility hazard.  Achieved by maintaining a set of all edited lines
" with trailing whitespace, backed by a Splay tree where children store line number offsets.
"======================================================================================}}}

" Issue con markdown
"Plug 'Yggdroot/indentLine'
"Plug 'lukas-reineke/indent-blankline.nvim'
""{{{======================================================================================
"" Displaying thin vertical lines at each indentation leve
"let g:indentLine_enabled = 1
""======================================================================================}}}

"=========================================================================================
"#########################################################################################
"=========================================================================================

"=========================================================================================
"Nice to have but I don´t need it
"=========================================================================================

https://github.com/michaelb/sniprun
"=========================================================================================
" Sniprun is a code runner plugin for neovim.
"=========================================================================================

" Plug 'ap/vim-css-color'

Plug 'simeji/winresizer'
"{{{======================================================================================
" <c-e>
"======================================================================================}}}

Plug 'jmckiern/vim-venter'
"{{{======================================================================================
nnoremap r<space> :VenterToggle<cr>
let g:venter_width=&columns/6
"======================================================================================}}}

" creo que es mejor resolver conflictos asi como vienen en el archivo
Plug 'lambdalisue/gina.vim', { 'on': 'Gina' }
"{{{======================================================================================
" dp, dol, dor
"======================================================================================}}}

Lo cambie por usar floatterm ranger
Plug 'francoiscabrol/ranger.vim'
nnoremap rj :Ranger<cr>
nnoremap rk :RangerWorkingDirectory<cr>
"{{{======================================================================================
" File manager
"======================================================================================}}}
" indentation
" au FileType python setlocal tabstop=4 sts=4 sw=4
" au FileType ruby,html,css,scss,sass,typescript,snippets setlocal tabstop=2 sts=2 sw=2
" au FileType javascript,javascript.jsx,feature,yaml,vim,json,eruby setlocal tabstop=2 sts=2 sw=2


"Plug 'vimwiki/vimwiki'
""======================================================================================}}}
""{{{======================================================================================

" Plug 'ntpeters/vim-better-whitespace'
"{{{======================================================================================
" This plugin causes all trailing whitespace characters
let g:strip_only_modified_lines=1
"======================================================================================}}}

" Plug 'tpope/vim-sleuth'
"{{{======================================================================================
" adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
"======================================================================================}}}

" Plug 'editorconfig/editorconfig-vim'
"{{{======================================================================================
"======================================================================================}}}

"I prefer use close-buffers.vim
Plug 'arithran/vim-delete-hidden-buffers', { 'on': 'DeleteHiddenBuffers'}
"{{{======================================================================================
" use the plugin bufexplorer to delete one by one
" Delete all the buffers except the currrent
"======================================================================================}}}


"Insertlessly {{{=============================
nmap <space><space> <Plug>InsertSpace
"}}}==========================================
" Plug 'dahu/insertlessly'
"{{{======================================================================================
" Enter and return in normal mode are working like insert mode
let g:insertlessly_insert_spaces = 0
let g:insertlessly_cleanup_trailing_ws = 0
let g:insertlessly_cleanup_all_ws = 0
"======================================================================================}}}

"I never use
Plug 'iamcco/markdown-preview.nvim'
"{{{======================================================================================
let g:mkdp_auto_close = 0
let g:mkdp_markdown_css = '~/.md.css'
"======================================================================================}}}

Plug 'junegunn/gv.vim'
"{{{======================================================================================
" Needs fugitive
"======================================================================================}}}

Plug 'liuchengxu/vim-clap'
"I never use
Plug 'bomgar/breakit.vim'
"breakit{{{===============================================================================
" <Leader>ba, - break after comma
" <Leader>bA, - break after comma remove space
" <Leader>bb, - break before comma
" <Leader>ba. - break after dot
" <Leader>bA. - break after dot remove space
" <Leader>bb. - break before dot
" test, test2, test3
" <Leader>ba,
" test,
"  test2,
"  test3
"======================================================================================}}}


" Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
" Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
" Plug 'ray-x/navigator.lua'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-session', { 'on': ['SaveSession', 'OpenSession'] }
"{{{======================================================================================
let g:session_directory='~/.config/nvim/sessions'
let g:session_autosave='no'
"======================================================================================}}}
nnoremap <F3> :SaveSession<space>
nnoremap <F4> :OpenSession<cr>

" nnoremap <f3> :mksession! ~/.config/nvim/sessions/
" nnoremap <f4> :source ~/.config/nvim/sessions/

"EasyAlign {{{================================
" Start interactive EasyAlign in visual mode (e.g. vipga)
" xmap gp <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
" nmap gp <Plug>(EasyAlign)
"}}}==========================================


Plug 'svermeulen/vim-yoink'
"{{{======================================================================================
" nmap ,<up> <plug>(YoinkRotateBack)
" nmap ,<down> <plug>(YoinkRotateForward)
" nmap ,<left> <plug>(YoinkPostPasteSwapBack)
" nmap ,<right> <plug>(YoinkPostPasteSwapForward)
" nmap P <plug>(YoinkPaste_P)
" nmap ,= <plug>(YoinkPostPasteToggleFormat)
" " nnoremap p "+p
"======================================================================================}}}

Plug 'ryanoasis/vim-devicons'
" Plug 'adelarsq/vim-emoji-icon-theme'
"{{{======================================================================================
" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP and many more
let g:webdevicons_enable_airline_tabline = 1
"======================================================================================}}}

Plug 'tjdevries/colorbuddy.vim'
Plug 'Th3Whit3Wolf/onebuddy', { 'branch': 'main' }

remplaced with native completition
" Plug 'flwyd/vim-conjoin'


Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
"{{{======================================================================================
nnoremap <space>hb :CHADopen<cr>
"======================================================================================}}}

now I use Lsp commands
Plug 'pechorin/any-jump.vim'
"{{{======================================================================================
let g:any_jump_preview_lines_count = 5
let g:any_jump_window_width_ratio  = 1
let g:any_jump_window_height_ratio = 1
let g:any_jump_window_top_offset   = 0
let g:any_jump_grouping_enabled = 1
"======================================================================================}}}


Plug 'wesQ3/vim-windowswap'
"{{{======================================================================================
"======================================================================================}}}

Plug 'kkoomen/vim-doge', { 'on': 'DogeGenerate'}
"{{{======================================================================================
" DoGe is a (Do)cumentation (Ge)nerator which will generate a proper documentation skeleton
" based on certain expressions (mainly functions)
let g:doge_enable_mappings = 0
"======================================================================================}}}

Plug 'puremourning/vimspector'
"{{{======================================================================================
" Debugger
" let g:vimspector_enable_mappings = 'HUMAN'
sign define vimspectorBP text=🔴 texthl=Normal
sign define vimspectorBPDisabled text=🔵 texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad
nnoremap +<space> :call vimspector#ToggleBreakpoint()<cr>
nnoremap ++ :call vimspector#Continue()<cr>
nnoremap +o :call vimspector#StepOut()<cr>
nnoremap +e :call vimspector#StepInto()<cr>
nnoremap +u :call vimspector#StepOver()<cr>
nnoremap +, :call vimspector#Pause()<cr>
nnoremap +. :call vimspector#Stop()<cr>
nnoremap +; :call vimspector#Restart()<cr>
nnoremap +a :VimspectorReset<cr>
"======================================================================================}}}

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

"=========================================================================================
"#########################################################################################
"=========================================================================================

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

"lightline
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction
au BufEnter * call vista#RunForNearestMethodOrFunction()
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


nnoremap <F3> :TabooRename<space>

" Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
"======================================================================================}}}
" This project contains Vim configuration files for editing and compiling Ruby within Vim.
" Method [m ]m, Visual am,im,aM(Class)
"{{{======================================================================================

" Plug 'tpope/vim-rails'
"======================================================================================}}}
" Support rails development
"{{{======================================================================================

Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'justinmk/vim-dirvish'
nnoremap <leader>hj :Dirvish %<cr>
nnoremap <leader>hk :Dirvish<cr>
"{{{======================================================================================
"with ranger I can't see long name files
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

Plug 'vuciv/vim-bujo', { 'on': 'Todo' }
"{{{======================================================================================
" Todo list
"======================================================================================}}}

" Plug 'ntpeters/vim-better-whitespace'
"{{{======================================================================================
" This plugin causes all trailing whitespace characters
let g:strip_only_modified_lines=1
"======================================================================================}}}



highlight MyGroup guifg=NONE guibg=green
let g:last_jump = 0
function HighlightLastJump()
  " let new_size = getjumplist()[-2]
  " if len(new_size) > g:jump_list
    " g:jump_list = new_size
    let line = getjumplist()[-2][-1]['lnum']
    g:last_jump = line
    if exists("g:hi")
      silent call matchdelete(g:hi)
    endif
    let g:hi = matchaddpos("MyGroup", [line])
  " endif
endfunction
" au CursorMoved * silent call HighlightLastJump()
highlight MyGroup guifg=NONE guibg=green
let g:last_jump = 0
function HighlightLastJump()
  " let new_size = getjumplist()[-2]
  " if len(new_size) > g:jump_list
    " g:jump_list = new_size
    let line = getjumplist()[-2][-1]['lnum']
    g:last_jump = line
    if exists("g:hi")
      silent call matchdelete(g:hi)
    endif
    let g:hi = matchaddpos("MyGroup", [line])
  " endif
endfunction
" au CursorMoved * silent call HighlightLastJump()

" Now using pears plugin

" tnoremap [ []<left>

-- require('lualine').setup({
--   options = {theme = 'material'},
--   sections = {
--     lualine_a = {'mode'},
--     lualine_b = {'branch'},
--     lualine_c = {'filename'},
--     lualine_x = {'filetype'},
--     lualine_y = {},
--     lualine_z = {'location'}
--   },
-- })


-- require'tabline'.setup{}
-- require'tabline'.setup{
--     show_index = false,    -- show tab index
--     show_modify = true,   -- show buffer modification indicator
--     no_name = '[No name]' -- no name buffer name
-- }
"Completition {{{=================================
" map <c-p> to manually trigger completion
" imap <tab> <Plug>(completion_smart_tab)
" imap <s-tab> <Plug>(completion_smart_s_tab)
" imap <silent> <c-p> <Plug>(completion_trigger)
" inoremap <expr> <Tab>   pumvisible() ? "\<c-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<c-p>" : "\<S-Tab>"
"}}}==========================================


" Plug 'markonm/traces.vim'
"{{{======================================================================================
" Preview in substitute
"======================================================================================}}}

https://github.com/williamboman/mason.nvim
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"{{{======================================================================================
" :CocInstall @yaegassy/coc-intelephense
let g:coc_global_extensions = [
            \ 'coc-explorer', 'coc-solargraph', 'coc-tsserver', 'coc-yaml', 'coc-emmet',
            \ 'coc-json', 'coc-diagnostic'
            \ ]
" let g:coc_global_extensions = ['coc-sumneko-lua', 'coc-solargraph', 'coc-tsserver']
" let g:coc_global_extensions = [
"   \ 'coc-github', 'coc-elixir', 'coc-restclient', 'coc-emoji', 'coc-gitignore', 'coc-marketplace'
"   \ ]
"   https://github.com/neoclide/coc.nvim/issues/1496
"   'coc-lua', 'coc-python'
" let g:coc_global_extensions = [
"   \ 'coc-go', 'coc-solargraph', 'coc-rls',
"   \ 'coc-emmet', 'coc-html', 'coc-lit-html', 'coc-css', 'coc-cssmodules',
"   \ 'coc-tslint', 'coc-tslint-plugin', 'coc-tsserver', 'coc-eslint', 'coc-docker',
"   \ 'coc-prettier', 'coc-jest', 'coc-json', 'coc-yaml', 'coc-tailwindcss',
"   \ 'coc-lists', 'coc-word', 'coc-translator',
"   \ 'coc-post', 'coc-project', 'coc-highlight', 'coc-snippets',
"   \ 'coc-git', 'coc-markmap', 'coc-yank',
"   \ 'coc-todolist', 'coc-pyright', 'coc-vetur',
"   \ 'coc-dictionary', 'coc-syntax', 'coc-explorer'
"   \ ]

" hi! CocErrorSign guifg=#d97084
" hi! CocWarningSign guifg=#e9cb87
" hi! CocInfoSign guifg=#d0d2d2
" hi! CocHintSign guifg=#6face4

" CocSettings
 " lua.enable
 " "lua": {
 "   "command": "lua-lsp",
 "   "filetypes": ["lua"]
 " }
"======================================================================================}}}
" "coc {{{======================================
" " nmap <up> <Plug>(coc-git-prevchunk)
" " nmap <down> <Plug>(coc-git-nextchunk)
" " Use tab for trigger completion with characters ahead and navigate.
" inoremap <silent><expr> <tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<C-h>"
"
" inoremap <silent><expr> <down>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<C-h>"
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
"
" " Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()
" "
" " " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" " " position. Coc only does snippet and additional edit on confirm.
" " if exists('*complete_info')
" "   inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<cr>"
" " else
" "   imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<cr>"
" " endif
" "
" " nnoremap <space>u :CocCommand explorer --toggle --sources=buffer+,file+<cr>
" " nnoremap <space>u :CocCommand explorer --toggle --sources=buffer+<cr>
" " nnoremap ba :CocCommand explorer --toggle --sources=buffer+<cr>
"
" " nmap <silent> [c <Plug>(coc-diagnostic-prev)
" " nmap <silent> ]c <Plug>(coc-diagnostic-next)
" "
" " nmap <silent> + <Plug>(coc-definition)zz
" " nmap ga <Plug>(coc-definition)
" "
" " nmap <silent> <space>ga :tabnew %<cr><Plug>(coc-definition)
" " nmap <silent> g+ s+ga
" " nmap <silent> g- s-ga
" "
" " " show chunk diff at current position
" " nmap <space>gc <Plug>(coc-git-chunkinfo)
" "
" " imap <c-l> <Plug>(coc-snippets-expand)
" " nnoremap <silent> <space>hp  :<C-u>CocList --auto-preview --normal yank<cr>
"
" " nnoremap <space>ra :CocList --top buffers<cr>
" " nnoremap <space>ro :CocList --auto-preview --top gfiles<cr>
" " nnoremap <space>re :CocList --auto-preview --top files<cr>
" " nnoremap <space>ru :CocList --auto-preview --top lines<cr>
" " nnoremap <space>rd :CocList --auto-preview --top commits<cr>
" " nnoremap <space>rr :CocList --auto-preview --top grep<space>
" " nnoremap rg :CocList --auto-preview --top gstatus<cr>
" " nnoremap rm :CocList --top windows<cr>
" " nnoremap rs :CocList --auto-preview diagnostics<cr>
"
" " nmap mn <Plug>BookmarkNextzz
" " nmap mp <Plug>BookmarkPrevzz
" "
" " nnoremap <space>mm :CocCommand bookmark.toggle<cr>
" " nnoremap <space>mp :CocCommand bookmark.prev<cr>
" " nnoremap <space>mn :CocCommand bookmark.next<cr>
" " nnoremap <space>mt :CocCommand bookmark.annotate<cr>
" " nnoremap <space>mz :CocCommand bookmark.clearForCurrentFile<cr>
" " nnoremap <space>mx :CocCommand bookmark.clearForAllFiles<cr>
" " nnoremap <space>ma :CocList --auto-preview bookmark<cr>
" "}}}==========================================

" Plug 'feline-nvim/feline.nvim'
function! s:cwdd()
    return 'Git checkout'
endfunction

--===========================================================================================================
-- require("aerial").setup({
--   on_attach = function(bufnr)
--     -- Toggle the aerial window with <leader>a
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>a', '<cmd>AerialToggle!<CR>', {})
--     -- Jump forwards/backwards with '{' and '}'
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '{', '<cmd>AerialPrev<CR>', {})
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '}', '<cmd>AerialNext<CR>', {})
--     -- Jump up the tree with '[[' or ']]'
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', '[[', '<cmd>AerialPrevUp<CR>', {})
--     vim.api.nvim_buf_set_keymap(bufnr, 'n', ']]', '<cmd>AerialNextUp<CR>', {})
--   end
-- })
--===========================================================================================================
Plug 'williamboman/mason.nvim'
lua require("mason").setup()

 local high_str = require("high-str")
high_str.setup({
	verbosity = 0,
	saving_path = "/tmp/highstr/",
	highlight_colors = {
		-- color_id = {"bg_hex_code",<"fg_hex_code"/"smart">}
		color_0 = {"#0c0d0e", "smart"},	-- Cosmic charcoal
		color_1 = {"#e5c07b", "smart"},	-- Pastel yellow
		color_2 = {"#7FFFD4", "smart"},	-- Aqua menthe
		color_3 = {"#8A2BE2", "smart"},	-- Proton purple
		color_4 = {"#FF4500", "smart"},	-- Orange red
		color_5 = {"#008000", "smart"},	-- Office green
		color_6 = {"#0000FF", "smart"},	-- Just blue
		color_7 = {"#FFC0CB", "smart"},	-- Blush pink
		color_8 = {"#FFF9E3", "smart"},	-- Cosmic latte
		color_9 = {"#7d5c34", "smart"},	-- Fallow brown
	}
})

Plug 'Pocco81/HighStr.nvim'

" Plug 'preservim/nerdtree'
Plug 'justinmk/vim-dirvish'
let g:dirvish_project_drawer_view = 1

Plug 'kyazdani42/nvim-tree.lua'
" Plug 'lambdalisue/fern.vim'
"
https://github.com/nvim-colortils/colortils.nvim
https://github.com/gaoDean/autolist.nvim
Plug 'liuchengxu/vista.vim'
""{{{======================================================================================
"" require ctags, ptags
"" Viewer & Finder for LSP symbols and tags in Vim
"" use ptags generate the tags file
"let g:vista_fzf_preview = ['right:65%']
"let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"let g:vista#renderer#enable_icon = 1
"let g:vista_default_executive = 'nvim_lsp'
"" let g:vista_default_executive = 'coc'
"" let g:vista_executive_for = {
""   \ 'lua': 'nvim_lsp',
""   \ 'proto': 'coc',
""   \ 'vim': 'coc'
""   \ }
"" let g:vista_sidebar_position = 'vertical topleft'
"let g:vista_sidebar_width='35'
"let g:vista_blink = [0, 0]

"" function! NearestMethodOrFunction() abort
""   return get(b:, 'vista_nearest_method_or_function', '')
"" endfunction
"" set statusline+=%{NearestMethodOrFunction()}
"" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
""======================================================================================}}}

Plug 'jose-elias-alvarez/typescript.nvim'
"{{{======================================================================================
" A minimal typescript-language-server integration plugin to set up the language server
" via nvim-lspconfig and add commands for convenience
"======================================================================================}}}
-- require("typescript").setup({
--     disable_commands = false, -- prevent the plugin from creating Vim commands
--     debug = false, -- enable debug logging for commands
-- })

" Instalado principlamente para ruby
"Plug 'dense-analysis/ale'
""{{{======================================================================================
"let g:ale_linters = {
"\   'ruby': ['rubocop'],
"\   'javascript': ['eslint'],
"\   'typescript': ['eslint'],
"\   'typescriptreact': ['eslint'],
"\}
"let g:ale_fixers = {'ruby': ['rubocop']}
"let g:ale_ruby_rubocop_executable = 'bundle'
"let g:ale_ruby_rubocop_options = '-c .rubocop.yml'
""======================================================================================}}}

" Plug 'mfussenegger/nvim-lint'
"{{{======================================================================================
"======================================================================================}}}
-- require('lint').linters_by_ft = {
--   ruby = {'rubocop'}
-- }

" nnoremap <cr> <cmd>FineCmdline<cr>

Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
"{{{======================================================================================
" Allows rename tab with the taboo plugin
" require vim-fugitive to show the branch name
" file autocommands, section_c on autocmd.vim
let g:airline_powerline_fonts = 1
let g:airline_inactive_collapse=0
" let g:airline_section_c = '%:p:h:t' . '|' . '%t'
" let g:airline_section_c = substitute(getcwd(),$HOME,'~','') . '|' . '%t'
" let g:airline_section_c = '%{s:cwdd()}'
" let g:airline_section_c = airline#section#create(["%{substitute(getcwd(),$HOME,'~','')}"])
let g:airline_section_z = '%l:%c'
let g:airline_section_y = ''
let g:airline_focuslost_inactive = 0
let g:airline_inactive_collapse=0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#fnamemod = ':t:r'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_count = 0
au VimEnter * hi! airline_tabsel gui=bold guibg=#76BA99
au VimEnter * hi airline_tabfill guibg=black
au VimEnter * hi! airline_tab gui=bold guibg=#0096c7 guifg=#000000
au VimEnter * hi! airline_tabmod gui=bold guibg=#e63244 guifg=#000000
======================================================================================}}}

" Plug 'levouh/tint.nvim'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'vim-airline/vim-airline'
""{{{======================================================================================
"" Allows rename tab with the taboo plugin
"" require vim-fugitive to show the branch name
"" file autocommands, section_c on autocmd.vim
"let g:airline_powerline_fonts = 1
"let g:airline_inactive_collapse=0
"" let g:airline_section_c = '%:p:h:t' . '|' . '%t'
"" let g:airline_section_c = substitute(getcwd(),$HOME,'~','') . '|' . '%t'
"" let g:airline_section_c = '%{s:cwdd()}'
"" let g:airline_section_c = airline#section#create(["%{substitute(getcwd(),$HOME,'~','')}"])
"let g:airline_section_z = '%l:%c'
"let g:airline_section_y = ''
"let g:airline_focuslost_inactive = 0
"let g:airline_inactive_collapse=0
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#tab_min_count = 1
"let g:airline#extensions#tabline#show_buffers = 0
"let g:airline#extensions#tabline#fnamemod = ':t:r'
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"let g:airline#extensions#tabline#show_tab_nr = 0
"let g:airline#extensions#tabline#show_tab_type = 0
"let g:airline#extensions#tabline#show_close_button = 0
"let g:airline#extensions#tabline#show_splits = 0
"let g:airline#extensions#tabline#show_tab_count = 0
"au VimEnter * hi! airline_tabsel gui=bold
"au VimEnter * hi! airline_tab gui=bold guibg=#0096c7 guifg=#000000
"au VimEnter * hi! airline_tabmod gui=bold guibg=#e63244 guifg=#000000
""======================================================================================}}}

" Plug 'mrshmllow/document-color.nvim'
" Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Plug 'projekt0n/github-nvim-theme'
" Plug 'Mofiqul/vscode.nvim'

 -- require('bufferline').setup {
 --   options = {
 --     mode = 'tabs'
 --   }
 -- }

" Plug 'MunifTanjim/nui.nvim'
" Plug 'VonHeikemen/fine-cmdline.nvim'
"=========================================================================================
"command menu
"=========================================================================================


" Plug 'blueyed/vim-diminactive'
" let g:diminactive_use_syntax = 1
" Plug 'levouh/tint.nvim'
" Plug 'TimUntersberger/neogit'
"{{{======================================================================================
"======================================================================================}}}

" yank, guardar copiar y pegar
https://github.com/gbprod/yanky.nvim/

" Instalado principlamente para ruby
"Plug 'dense-analysis/ale'
"""{{{======================================================================================
"let g:ale_linters = {  'ruby': ['rubocop']}
"" \   'javascript': ['eslint'],
"" \   'typescript': ['eslint'],
"" \   'typescriptreact': ['eslint'],
"" \}
"let g:ale_fixers = {'ruby': ['rubocop']}
"let g:ale_ruby_rubocop_executable = 'bundle'
"let g:ale_ruby_rubocop_options = '-c .rubocop.yml'
""======================================================================================}}}
" Plug 'lukas-reineke/lsp-format.nvim'
" Plug 'simrat39/symbols-outline.nvim'
" Plug 'liuchengxu/vista.vim'
"{{{======================================================================================
" require ctags, ptags
" Viewer & Finder for LSP symbols and tags in Vim
" use ptags generate the tags file
let g:vista_fzf_preview = ['right:65%']
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_default_executive = 'nvim_lsp'
" let g:vista_default_executive = 'coc'
let g:vista_executive_for = {
  \ 'lua': 'coc',
  \ 'proto': 'coc',
  \ 'vim': 'coc'
  \ }
" let g:vista_sidebar_position = 'vertical topleft'
let g:vista_sidebar_width='35'
let g:vista_blink = [0, 0]

" function! NearestMethodOrFunction() abort
"   return get(b:, 'vista_nearest_method_or_function', '')
" endfunction
" set statusline+=%{NearestMethodOrFunction()}
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
"======================================================================================}}}
Plug 'ctrlpvim/ctrlp.vim'
"{{{======================================================================================
" Run :CtrlP or :CtrlP [starting-directory] to invoke CtrlP in find file mode.
" Run :CtrlPBuffer or :CtrlPMRU to invoke CtrlP in find buffer or find MRU file mode.
" Run :CtrlPMixed to search in Files, Buffers and MRU files at the same time.
let g:ctrlp_max_files=0
let g:ctrlp_max_depth = 40
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir', 'tmux', 'mpc', 'smarttabs']
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_show_hidden = 1
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_match_window_reversed = 1
let g:ctrlp_match_window = 'top'
if executable('rg')
  " let g:ctrlp_user_command = 'rg %s --files --hidden --color=never --glob ""'
endif
" let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }
"======================================================================================}}}
" file scripts
" CtrlP
function BrightHighlightOn()
  hi Comment gui=bold guifg=#66d9ef
endfunction

function BrightHighlightOff()
  hi Comment gui=Italic
endfunction

Plug 'lambdalisue/fern.vim'
-- local dap = require('dap')
-- dap.run({
--   type = 'node2',
--   request = 'attach',
--   address = "127.0.0.1",
--   port = 9229,
--   localRoot = vim.fn.getcwd(),
--   remoteRoot = "/home/vcap/app",
--   sourceMaps = true,
--   protocol = 'inspector',
--   skipFiles = {'<node_internals>/**/*.js'},
-- })

-- dap.adapters.node2 = {
--   type = 'executable',
--   command = 'node',
--   args = {os.getenv('HOME') .. '/workspace/vscode-node-debug2/out/src/nodeDebug.js'},
-- }

-- draft
-- {
--   type = 'node2',
--   workspace = '${workspaceFolder}',
--   request = 'launch',
--   program = '${workspaceFolder}/${file}',
--   cwd = vim.fn.getcwd(),
--   sourceMaps = true,
--   protocol = 'inspector',
--   console = 'integratedTerminal',
-- },


-- require'dap-ruby'.setup()
  --  dap.adapters.ruby = {
  --   type = 'server',
  --   host = '127.0.0.1',
  --   port = 38697,
  -- }
  --
  --  dap.adapters.rdbg = {
  --   type = 'server',
  --   host = '127.0.0.1',
  --   port = 38697,
  -- }

-- dap.adapters.ruby = {
--   type = 'server',
--   port = 1234,
--   host = '127.0.0.1'
-- }

-- dap.configurations.ruby = {
  -- {
  --   type = 'ruby',
  --   request = 'attach',
  --   name = 'Rails',
  --   program = 'bundle',
  --   programArgs = {'exec', 'rails', 's'},
  --   useBundler = true
  -- },
  -- {
  --   type = 'ruby',
  --   request = 'launch',
  --   name = 'Rspec',
  --   program = 'bundle',
  --   programArgs = {'exec', 'rspec', '${file}'},
  --   useBundler = true
  -- }
   -- {
   --   type = 'ruby';
   --   name = 'run current spec file';
   --   bundle = 'bundle';
   --   request = 'attach';
   --   command = "rspec";
   --   script = "${file}";
   --   port = 1234;
   --   server = '127.0.0.1';
   --   waiting = 1000;
   -- },
-- }
-- ls.snippets = {
--   all = {
--     ls.parser.parse_snippet("llog", "console.log()")
--   }
-- }


-- local snip = ls.snippet
-- local func = ls.function_node
-- ls.add_snippets(nil, {
--     typescript = {
--         snip({
--             trig = "con",
--             namr = "Console",
--             dscr = "Console.log",
--         }, {
--             func(function() return "console.log('')" end, {}),
--         }),
--     },
-- })

-- vim.keymap.set({ "i", "s" }, "C", function()
--   if ls.expand_or_jump() then
--     ls.expand_or_jump()
--   end
-- end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<c-j>", function()
--   if ls.jumpable(-1) then
--     ls.jumpable(-1)
--   end
-- end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<c-l>", function()
--   if ls.choice_active() then
--     ls.choice_active(1)
--   end
-- end, { silent = true })

-- local ls = require("luasnip") --{{{

-- -- require("luasnip.loaders.from_vscode").lazy_load()
-- require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })
-- require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./my-cool-snippets" } })

-- require("luasnip").config.setup({ store_selection_keys = "<A-p>" })

-- vim.cmd([[command! LuaSnipEdit :lua require("luasnip.loaders.from_lua").edit_snippet_files()]]) --}}}

-- -- Virtual Text{{{
-- local types = require("luasnip.util.types")
-- ls.config.set_config({
-- 	history = true, --keep around last snippet local to jump back
-- 	updateevents = "TextChanged,TextChangedI", --update changes as you type
-- 	enable_autosnippets = true,
-- 	ext_opts = {
-- 		[types.choiceNode] = {
-- 			active = {
-- 				virt_text = { { "●", "GruvboxOrange" } },
-- 			},
-- 		},
-- 		-- [types.insertNode] = {
-- 		-- 	active = {
-- 		-- 		virt_text = { { "●", "GruvboxBlue" } },
-- 		-- 	},
-- 		-- },
-- 	},
-- }) --}}}

-- Key Mapping --{{{

-- vim.keymap.set({ "i", "s" }, "<c-s>", "<Esc>:w<cr>")
-- vim.keymap.set({ "i", "s" }, "<c-u>", '<cmd>lua require("luasnip.extras.select_choice")()<cr><C-c><C-c>')

-- vim.keymap.set({ "i", "s" }, "<a-p>", function()
-- 	if ls.expand_or_jumpable() then
-- 		ls.expand()
-- 	end
-- end, { silent = true })
-- -- vim.keymap.set({ "i", "s" }, "<C-k>", function()
-- -- 	if ls.expand_or_jumpable() then
-- -- 		ls.expand_or_jump()
-- -- 	end
-- -- end, { silent = true })
-- -- vim.keymap.set({ "i", "s" }, "<C-j>", function()
-- -- 	if ls.jumpable() then
-- -- 		ls.jump(-1)
-- -- 	end
-- -- end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<A-y>", "<Esc>o", { silent = true })

-- vim.keymap.set({ "i", "s" }, "<a-k>", function()
-- 	if ls.jumpable(1) then
-- 		ls.jump(1)
-- 	end
-- end, { silent = true })
-- vim.keymap.set({ "i", "s" }, "<a-j>", function()
-- 	if ls.jumpable(-1) then
-- 		ls.jump(-1)
-- 	end
-- end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<a-l>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(1)
-- 	else
-- 		-- print current time
-- 		local t = os.date("*t")
-- 		local time = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
-- 		print(time)
-- 	end
-- end)
-- vim.keymap.set({ "i", "s" }, "<a-h>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(-1)
-- 	end
-- end) --}}}

-- -- More Settings --

-- vim.keymap.set("n", "<Leader><CR>", "<cmd>LuaSnipEdit<cr>", { silent = true, noremap = true })
-- vim.cmd([[autocmd BufEnter */snippets/*.lua nnoremap <silent> <buffer> <CR> /-- End Refactoring --<CR>O<Esc>O]])
Plug 'SmiteshP/nvim-gps'

Plug 'andymass/vim-matchup'
"{{{======================================================================================
" nnoremap <space>? :<c-u>MatchupWhereAmI?<cr>
" vim match-up: even better % fist_oncoming navigate and highlight matching words
" fist_oncoming modern matchit and matchparen replacement
" let g:matchup_matchparen_enabled = 0
"======================================================================================}}}
