set diffopt=filler,internal,algorithm:histogram,indent-heuristic,vertical
" hi Comment gui=italic guifg=#5C6370
" hi Visual  guifg=#7eb2dd guibg=#00384d gui=none
" hi CursorLine guifg=reverse guibg=#383838
" hi Normal guibg=black guifg=white

https://github.com/sorin-ionescu/prezto/issues/1065
# set -g default-terminal 'tmux-256color'

" Plug 'nathanaelkane/vim-indent-guides', { 'on': 'IndentGuidesToggle' }
"{{{======================================================================================
" let g:indent_guides_auto_colors = 0
" let g:indent_guides_guide_size = 1
"======================================================================================}}}


Plug 'jasoncodes/ctrlp-modified.vim'
"======================================================================================}}}
" Easily open locally modified files in your git-versioned projects.  The idea is that
" you're likely to be editing the same files again, or maybe you just want to catch up on
" the progress you've made after coming back from a break.
" :CtrlPModified shows all files which have been modified since your last commit.
" :CtrlPBranch shows all files modified on your current branch. Then set yourself up some mappings:
" map <Leader>m :CtrlPModified<CR> map <Leader>M :CtrlPBranch<CR>
"======================================================================================}}}
nnoremap <leader>ut :CtrlPModified<cr>

Plug 'DavidEGx/ctrlp-smarttabs'
"======================================================================================}}}
" With the vim plugin CtrlP you can easily open a file or a buffer. This is a ctrlp.vim extension
" that allow you to switch between different opened tabs.  Put this into your vimrc so the SmartTabs
" search will show up when you open CtrlP: let g:ctrlp_extensions = ['smarttabs']
" Other options: let g:ctrlp_smarttabs_modify_tabline = 0
" " If 1 will highlight the selected file in the tabline. (Default: 1)
" let g:ctrlp_smarttabs_reverse = 0
" Reverse the order in which files are displayed. (Default: 1)
"======================================================================================}}}

Plug 'vim-airline/vim-airline'
"{{{======================================================================================
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t:r'
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#ale#enabled = 1
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
"======================================================================================}}}

Plug 'tpope/vim-repeat'
"repeat{{{================================================================================
" If you've ever tried using the . command after a Plug map, you were
" likely disappointed to discover it only repeated the last native command
" inside that map, rather than the map as a whole. That disappointment ends today.
" Repeat.vim remaps . in a way that Plugs can tap into it.
"======================================================================================}}}

Plug 'christianfosli/wsl-copy'
"wsl-copy{{{==============================================================================
"wsl ubuntu
"======================================================================================}}}

tmux-navigator
" This plugin provides the following mappings which allow
" you to move between Vim panes and tmux splits seamlessly.
"     <ctrl-h> => Left
"     <ctrl-j> => Down
"     <ctrl-k> => Up
"     <ctrl-l> => Right
"     <ctrl-\> => Previous split

if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
"=========================================================================================
"=========================================================================================

"Description {===============================
" https://github.com/idanarye/vim-vebugger
" Run help vebugger-launching from Vim to learn
" how to launch the debugger.
" Run help vebugger-usage from Vim to learn
" how to operate the debugger.
"}===========================================
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'idanarye/vim-vebugger'

"Description {===============================
"}===========================================
Plug 'TaDaa/vimade'

"Description {===============================
"}===========================================
Plug 'Scuilion/markdown-drawer'

" for e in emoji#list()
"   call append(line('$'), printf('%s (%s)', emoji#for(e), e))
" endfor
"Description {===============================
" Argumentative aids with manipulating and moving
" between function arguments.
" Shifting arguments with <, and >,
" Moving between argument boundaries with [, and ],
" New text objects a, and i,
"============================================
Plug 'peterrincker/vim-argumentative'

"Description {===============================
"}===========================================
Plug 'rickhowe/spotdiff.vim'


"Description {===============================
" jsdoc.vim generates JSDoc block comments
" based on a function signature.
"}===========================================
Plug 'heavenshell/vim-jsdoc', { 'for': 'javascript' }

" Ultisnips
"==========================================
let g:UltiSnipsSnippetsDir='~/.config/nvim/UltiSnips'
let g:ycm_min_num_of_chars_for_completion = 1
let g:UltiSnipsExpandTrigger="<c-c>"
let g:UltiSnipsJumpForwardTrigger="<F9>"
let g:UltiSnipsJumpBackwardTrigger="<F8>"
let g:python_host_prog = '/usr/bin/python2.7'
let g:python3_host_prog = '/usr/bin/python'

"Description {===============================
" You can do SSH to a server via ctrlp.vim interface
" using this plugin. Note that this plugin is a ctrlp.vim
" extension and it requires a runner (tmux is currently only supported).
" :CtrlPSSH
"}===========================================
" Plug 'tacahiroy/ctrlp-ssh'


"Description {===============================
" A super simple function navigator for ctrlp.vim.
" For lazy people who cannot wait until ctags finishes.
"}===========================================
" Plug 'tacahiroy/ctrlp-funky'

"Description {===============================
" Basic Usage
" Move cursor to the Class/Method usage in your code
" Press c-] (if you have created mapping) or just
" execute :CtrlPtjump (or :CtrlPtjumpVisual in
" visual mode) in the command line.
" Or provide the symbol as an argument:
" :CtrlPtjump MyFavoriteClass
"}===========================================
" Plug 'ivalkeen/vim-ctrlp-tjump'

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

Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
tnoremap R <C-\><C-n>:RnvimrToggle<CR>
nnoremap R :RnvimrToggle<cr>
"{{{======================================================================================
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(&columns)),
            \ 'height': float2nr(round(0.8 * &lines)),
            \ 'col': float2nr(round(0.5 * &columns)),
            \ 'row': float2nr(round(0.5 * &lines)),
            \ 'style': 'minimal' }
"======================================================================================}}}

Plug 'luochen1990/indent-detector.vim'
" Plug 'nathanaelkane/vim-indent-guides', { 'on': 'IndentGuidesToggle' }
"{{{======================================================================================
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
"======================================================================================}}}

nnoremap <leader>ua :CtrlPBuffer<cr>
nnoremap <leader>uo :CtrlP<cr>
nnoremap <leader>uu :CtrlPLine<cr>



"vim-fixmyjs{{{===========================================================================
" auto fix your javascript using eslint
" or fixmyjs or jscs or tslint
Plug 'ruanyl/vim-fixmyjs', { 'for': 'javascript' }
let g:fixmyjs_use_local = 1
" let g:fixmyjs_rc_path = '~/Workspace/.eslintrc.js'
" let g:fixmyjs_rc_filename = ['.eslintrc.js', '.eslintrc.json']
"======================================================================================}}}
"django{{{================================================================================
Plug 'vim-scripts/django.vim', { 'for': 'python' }
"======================================================================================}}}

"vim-python-pep8-indent{{{================================================================
" This small script modifies Vim’s indentation
" behavior to comply with PEP8 and my aesthetic
" preferences.
Plug 'Vimjas/vim-python-pep8-indent', { 'for': 'python'}
"======================================================================================}}}


"rustup{{{================================================================================
" A thin wrapper for calling rustup from Vim
Plug 'ubnt-intrepid/rustup.vim', { 'for': 'rust' }
"======================================================================================}}}
"vim-racer{{{=============================================================================
" This plugin allows vim to use Racer for Rust code completion and navigation.
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
let g:racer_cmd = "~/.cargo/bin/racer"
"======================================================================================}}}

Plug 'tyewang/vimux-jest-test', { 'for': 'javascript' }
"======================================================================================}}}
" RunJest - runs all the tests
" RunJestOnBuffer - runs all the tests in the current file
" RunJestFocused - runs the current test under the cursor
"{{{======================================================================================
"vim-phoenix{{{===========================================================================
" Integrates with vim-projectionist for navigating project
" files according to Phoenix conventions.
" Comes with extra mappings for vim-surround.
" Comes with extra snippets for UltiSnips.
" Provides :Mix command that delegates to mix.
" Provides project-specific Vim navigation settings
" for path and suffixesadd.
Plug 'avdgaag/vim-phoenix', { 'for': 'elixir' }
"======================================================================================}}}


"vim-mix{{{===============================================================================
" Plugin for using Elixir's build tool, mix.
" :Mix [command] runs the default mix task (the "run" task, unless otherwise configured), or the given command.
" :Mclean cleans generated application files
" :Mcompile compiles sources files
" :Mdeps lists project dependencies and their status
" :Mdeps clean removes dependency files
" :Mdeps compile compiles dependencies
" :Mdeps get gets all out of date dependencies
" :Mdeps unlock unlocks all dependencies
" :Mdeps update updates project dependencies
" :Mtest runs the project's tests
" Planned commands
" :Mixfile opens the project Mixfile.
" :Mdeps unlock <deps> unlocks specific dependencies
" :Mdeps update <deps> updates specific dependencies
" :Mdo executes the commands separated by comma
" :Mescript generates an escript and replaces the current buffer
" :Mrun runs the given expression
Plug 'mattreduce/vim-mix', { 'for': 'elixir' }
"======================================================================================}}}

"gotags{{{================================================================================
" gotags is a ctags-compatible tag generator for Go.
Plug 'jstemmer/gotags', { 'for': 'go' }
"======================================================================================}}}
Plug 'mattn/emmet-vim'
"{{{======================================================================================
" <c-z>, by configuration
let g:user_emmet_leader_key='<c-e>'
"======================================================================================}}}
autocmd FileType html,css,scss,typescript,eruby,handlebars,javascript EmmetInstall
"Emmet {{{====================================
"Create tag
au BufEnter *.jsx,*.js,*.html,*.ts,*.css,*.scss,*.php,*.erb imap qb <space><backspace><c-e>,
"Create tag and open the tag
au BufEnter *.jsx,*.js,*.html,*.ts,*.css,*.scss,*.php,*.erb imap qm <space><backspace><c-e>,qn
"}}}==========================================


Plug 'skywind3000/vim-quickui'
"{{{======================================================================================
" menu like turboc
" https://github.com/skywind3000/vim-quickui/blob/master/MANUAL.md
call quickui#menu#install('&Debugger', [
	    \ ['Step Ou&t', 'call vimspector#StepOut()']
	    \ ])
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

Plug 'xolox/vim-notes'
"{{{======================================================================================
let g:notes_suffix = '.md'
"======================================================================================}}}

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" colorscheme" rigel
Plug 'rigellute/rigel'
set -g status-left '#[fg=green] #S #[default]'
set-option -g status-interval 1
set -g status-interval 5
set-window-option -g xterm-keys on
set-option -gw xterm-keys on
setw -g mode-keys vi

