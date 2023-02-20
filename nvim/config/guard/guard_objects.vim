Plug 'kana/vim-textobj-user'
"{{{======================================================================================
" vim-textobj-user is a Vim plugin to create your own text objects.
"======================================================================================}}}

Plug 'kana/vim-textobj-entire'
"{{{======================================================================================
" ae targets the entire content of the current buffer.
" ie is similar to ae, but ie does not include leading and trailing empty lines.
"======================================================================================}}}

Plug 'kana/vim-textobj-function'
"{{{======================================================================================
" daf to Delete A Function, and
" vif to Visually select the code Inside a Function.
" yaF to Yank A Function with leading or trailing blank lines, and
" viF to visually select a function without leading or trailing blank lines.
"======================================================================================}}}

Plug 'whatyouhide/vim-textobj-xmlattr', { 'for': ['javascript', 'html', 'eruby'] }
"{{{======================================================================================
" This vim plugin provides two text objects: ax and ix.
" They represent XML/HTML attributes.
" It's based on (and requires) vim-textobj-user.
"======================================================================================}}}

Plug 'AndrewRadev/dsf.vim'
"{{{======================================================================================
" By pressing dsf (which stands for "delete surrounding function call")
"======================================================================================}}}

Plug 'wellle/targets.vim'
"{{{======================================================================================
" Targets.vim is a Vim plugin that adds various text objects to give you more targets to
" operate on. It expands on the idea of simple commands like di' (delete inside the single
" quotes around the cursor) to give you more opportunities to craft powerful commands that
" can be repeated reliably. One major goal is to handle all corner cases correctly.
" daa
"======================================================================================}}}
