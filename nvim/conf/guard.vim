"=========================================================================================
"=========================================================================================
" Neovim plugins lua
"=========================================================================================
"=========================================================================================

Plug 'TimUntersberger/neogit'
"=========================================================================================
hi def NeogitDiffAddHighlight guibg=#404040
hi def NeogitDiffDeleteHighlight guibg=#404040
hi def NeogitDiffContextHighlight ctermbg=4 guibg=#333333
hi def NeogitHunkHeader guifg=#cccccc guibg=#404040
hi def NeogitHunkHeaderHighlight guifg=#cccccc guibg=#4d4d4d
"=========================================================================================

Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

" If you want to display icons, then use one of these plugins:
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
"=========================================================================================
" new status line
"=========================================================================================

https://github.com/mfussenegger/nvim-dap
"=========================================================================================
" nvim-dap is a Debug Adapter Protocol client implementation for Neovim (>= 0.5)
"=========================================================================================

Plug 'b3nj5m1n/kommentary', { 'branch': 'main' }
"=========================================================================================
" comments
"=========================================================================================

https://github.com/michaelb/sniprun
"=========================================================================================
" Sniprun is a code runner plugin for neovim.
"=========================================================================================

Plug 'onsails/lspkind-nvim'
"=========================================================================================
" icons in lsp completition
require('lspkind').init({
    -- with_text = true,
})
"=========================================================================================

Plug 'p00f/nvim-ts-rainbow'
"{{{======================================================================================
this plugin has performe issue
" Rainbow parentheses for neovim using tree-sitter.
require'nvim-treesitter.configs'.setup {
  rainbow = {
    enable = true,
  }
}
"======================================================================================}}}

Plug 'RishabhRD/popfix'
Plug 'RishabhRD/nvim-lsputils'
"{{{======================================================================================
" This plugin focuses on making such LSP actions highly user friendly.
" lua vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
lua <<EOF
vim.lsp.handlers['textDocument/codeAction'] = require'lsputil.codeAction'.code_action_handler
vim.lsp.handlers['textDocument/references'] = require'lsputil.locations'.references_handler
vim.lsp.handlers['textDocument/definition'] = require'lsputil.locations'.definition_handler
vim.lsp.handlers['textDocument/declaration'] = require'lsputil.locations'.declaration_handler
vim.lsp.handlers['textDocument/typeDefinition'] = require'lsputil.locations'.typeDefinition_handler
vim.lsp.handlers['textDocument/implementation'] = require'lsputil.locations'.implementation_handler
vim.lsp.handlers['textDocument/documentSymbol'] = require'lsputil.symbols'.document_handler
vim.lsp.handlers['workspace/symbol'] = require'lsputil.symbols'.workspace_handler
EOF
"======================================================================================}}}

Plug 'kosayoda/nvim-lightbulb'
"{{{======================================================================================
"The plugin shows a lightbulb in the sign column whenever a textDocument/codeAction
"is available at the current cursor position.
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()
"======================================================================================}}}

"{{{======================================================================================
" Colorscheme
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

Plug 'vim-airline/vim-airline-themes'
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


Plug 'xolox/vim-misc'
Plug 'xolox/vim-session', { 'on': ['SaveSession', 'OpenSession'] }
"{{{======================================================================================
let g:session_directory='~/.config/nvim/sessions'
let g:session_autosave='no'
"======================================================================================}}}
nnoremap <F3> :SaveSession<space>
nnoremap <F4> :OpenSession<cr>

Plug 'ryanoasis/vim-devicons'
" Plug 'adelarsq/vim-emoji-icon-theme'
"{{{======================================================================================
" Adds file type icons to Vim plugins such as: NERDTree, vim-airline, CtrlP and many more
let g:webdevicons_enable_airline_tabline = 1
"======================================================================================}}}

Plug 'tjdevries/colorbuddy.vim'
Plug 'Th3Whit3Wolf/onebuddy', { 'branch': 'main' }

" Plug 'ctrlpvim/ctrlp.vim'
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
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_match_window_bottom = 0
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

remplaced with native completition
let g:coc_global_extensions = [
  \ 'coc-github', 'coc-elixir', 'coc-restclient', 'coc-emoji', 'coc-gitignore', 'coc-marketplace'
  \ 'coc-bookmark'
  \ ]

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"{{{======================================================================================
" require solargraph
let g:coc_global_extensions = [
  \ 'coc-go', 'coc-lua', 'coc-python', 'coc-solargraph', 'coc-rls',
  \ 'coc-emmet', 'coc-html', 'coc-lit-html', 'coc-css', 'coc-cssmodules',
  \ 'coc-tslint', 'coc-tslint-plugin', 'coc-tsserver', 'coc-eslint', 'coc-docker',
  \ 'coc-prettier', 'coc-jest', 'coc-json', 'coc-yaml', 'coc-tailwindcss',
  \ 'coc-lists', 'coc-word', 'coc-translator', 'coc-phpls',
  \ 'coc-post', 'coc-project', 'coc-highlight', 'coc-snippets',
  \ 'coc-git', 'coc-markmap', 'coc-yank',
  \ 'coc-todolist', 'coc-pyright', 'coc-vetur', 'coc-diagnostic',
  \ 'coc-dictionary', 'coc-syntax'
  \ ]
"======================================================================================}}}
"coc {{{======================================
nmap <up> <Plug>(coc-git-prevchunk)
nmap <down> <Plug>(coc-git-nextchunk)
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <down>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<cr>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<cr>"
endif

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> + <Plug>(coc-definition)zz
nmap ga <Plug>(coc-definition)

nmap <silent> <space>ga :tabnew %<cr><Plug>(coc-definition)
nmap <silent> g+ s+ga
nmap <silent> g- s-ga

" show chunk diff at current position
nmap <space>gc <Plug>(coc-git-chunkinfo)

imap <c-l> <Plug>(coc-snippets-expand)
nnoremap <silent> <space>hp  :<C-u>CocList --auto-preview --normal yank<cr>
"}}}==========================================

" nnoremap <space>ra :CocList --top buffers<cr>
" nnoremap <space>ro :CocList --auto-preview --top gfiles<cr>
" nnoremap <space>re :CocList --auto-preview --top files<cr>
" nnoremap <space>ru :CocList --auto-preview --top lines<cr>
" nnoremap <space>rd :CocList --auto-preview --top commits<cr>
" nnoremap <space>rr :CocList --auto-preview --top grep<space>
" nnoremap rg :CocList --auto-preview --top gstatus<cr>
" nnoremap rm :CocList --top windows<cr>
" nnoremap rs :CocList --auto-preview diagnostics<cr>

nmap mn <Plug>BookmarkNextzz
nmap mp <Plug>BookmarkPrevzz

nnoremap <space>mm :CocCommand bookmark.toggle<cr>
nnoremap <space>mp :CocCommand bookmark.prev<cr>
nnoremap <space>mn :CocCommand bookmark.next<cr>
nnoremap <space>mt :CocCommand bookmark.annotate<cr>
nnoremap <space>mz :CocCommand bookmark.clearForCurrentFile<cr>
nnoremap <space>mx :CocCommand bookmark.clearForAllFiles<cr>
nnoremap <space>ma :CocList --auto-preview bookmark<cr>




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

Plug 'jmckiern/vim-venter', { 'on': 'VenterToggle' }
"{{{======================================================================================
let g:venter_width=&columns/8
nnoremap <F9> :VenterToggle<cr>
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
Plug 'gcmt/taboo.vim', { 'on': 'TabooRename' }
"{{{======================================================================================
" Rename tabs
"======================================================================================}}}

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
