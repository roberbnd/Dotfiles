Plug 'fatih/vim-go', { 'for': 'go' }
"{{{======================================================================================
" Go (golang) support for Vim, which comes with pre-defined sensible settings (like auto gofmt on save),
" with autocomplete, snippet support, improved syntax highlighting, go toolchain commands, and more. If
" needed vim-go installs all necessary binaries for providing seamless Vim integration with current commands.
" It's highly customizable and each individual feature can be disabled/enabled easily.
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
"======================================================================================}}}

" Plug 'neoclide/vim-jsx-improve', { 'for': ['javascript.jsx', 'javascript'] }
Plug 'glanotte/vim-jasmine', { 'for': 'jasmine' }
"{{{======================================================================================
" syntax
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:vim_jsx_pretty_colorful_config = 1
"======================================================================================}}}

Plug 'NLKNguyen/c-syntax.vim', { 'for': 'c' }
"{{{======================================================================================
"======================================================================================}}}

Plug 'tbastos/vim-lua', { 'for': 'lua' }
"{{{======================================================================================
"======================================================================================}}}

" Plug 'peitalin/vim-jsx-typescript', { 'for': [ 'typescript', 'javascript' ] }
"{{{======================================================================================
"======================================================================================}}}

Plug 'slashmili/alchemist.vim', { 'for': 'elixir' }
"{{{======================================================================================
" uses alchemist-server to give inside information about your elixir project in vim.
"======================================================================================}}}

Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
"{{{======================================================================================
" Syntax highlighting for Elixir and EEx files
" Filetype detection for .ex, .exs, .eex and .leex files
" Automatic indentation
" Integration between Ecto projects and vim-dadbod for running SQL queries on defined Ecto repositories
"======================================================================================}}}

Plug 'rust-lang/rust.vim', { 'for': 'rust' }
"{{{======================================================================================
" This is a Vim plugin that provides Rust file detection, syntax highlighting, formatting,
" Syntastic integration, and more.
"======================================================================================}}}

Plug 'ticki/rust-cute-vim', { 'for': 'rust' }
"{{{======================================================================================
" Cute ligatures for Rust in Vim:
"======================================================================================}}}

Plug 'mattn/vim-sqlfmt', { 'on': 'SQLFmt' }
"{{{======================================================================================
" vim plugin for SQL code format. similar to :GoFmt.  :SQLFmt
"======================================================================================}}}

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for': 'python'}
"{{{======================================================================================
" Semantic Highlighting for Python in Neovim
"======================================================================================}}}

Plug 'kalekundert/vim-coiled-snake', { 'for': 'python' }
"{{{======================================================================================
" Coiled Snake is a vim plugin that provides automatic folding of python code
"======================================================================================}}}

Plug 'martinda/Jenkinsfile-vim-syntax', { 'for': 'Jenkinsfile' }
"{{{======================================================================================
" Jenkinsfile DSL vim syntax
"======================================================================================}}}

Plug 'ekalinin/Dockerfile.vim', { 'for': 'Dockerfile' }
"{{{======================================================================================
" Vim syntax file for Docker's Dockerfile and snippets for snipMate.
"======================================================================================}}}

Plug 'rhysd/vim-crystal', { 'for': 'crystal' }
"{{{======================================================================================
"This is filetype support for Crystal programming language.
" filetype detection Syntax highlight Indentation vim-matchit support
" tool integration (implementations, context, formatter, and so on)
" spec integration Syntax check (Using Syntastic) Completion (currently for variable names)
"======================================================================================}}}

Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
"{{{======================================================================================
" Syntax Highlighting and Indentation for Haskell and Cabal
"======================================================================================}}}

Plug 'idris-hackers/idris-vim', { 'for': 'idris' }
"{{{======================================================================================
" This is an Idris mode for vim which features
" syntax highlighting, indentation and optional
" syntax checking via Syntastic. If you need a
" REPL I recommend using Vimshell.
"======================================================================================}}}

Plug 'derekwyatt/vim-scala', { 'for': 'scala' }
"{{{======================================================================================
" This is a "bundle" for Vim that builds off
" of the initial Scala plugin modules by
" Stefan Matthias Aust and adds some more
" "stuff" that I find useful, including all
" of my notes and customizations.
" Sorting of import statements
" :SortScalaImports
" There are different modes for import sorting available.
" :help :SortScalaImports
"======================================================================================}}}

"{{{======================================================================================
" Vim CSS Syntax File
Plug 'JulesWang/css.vim', { 'for': 'css' }
"======================================================================================}}}

Plug 'uarun/vim-protobuf', { 'for': 'proto' }
"{{{======================================================================================
"Google protocol buffer
"======================================================================================}}}
