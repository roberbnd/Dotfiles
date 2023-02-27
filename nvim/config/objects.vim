Plug 'kana/vim-textobj-user'
"{{{======================================================================================
" vim-textobj-user is a Vim plugin to create your own text objects.
"======================================================================================}}}

Plug 'kana/vim-textobj-entire'
"{{{======================================================================================
" ae targets the entire content of the current buffer.
" ie is similar to ae, but ie does not include leading and trailing empty lines.
"======================================================================================}}}

Plug 'thalesmello/vim-textobj-multiline-str', { 'for': 'python' }
"{{{======================================================================================
" aq: around multiline string. Gets the string contents and the quotes.
" iq: inner multiline string. Gets the string contents without the quotes and immediate linebreaks.
"======================================================================================}}}


Plug 'thalesmello/vim-textobj-methodcall', { 'for': 'javascript'}
"{{{======================================================================================
" am: around method call. Gets the method call of the surrounding scope.
" im: inner method call. Gets the method call of the current scope.
" aM: around method call chain. Gets the method call chain of the surrounding scope.
" iM: inner method call chain. Gets the method call chain of the current scope.
"======================================================================================}}}

Plug 'whatyouhide/vim-textobj-xmlattr', { 'for': ['javascript', 'html', 'eruby'] }
"{{{======================================================================================
" This vim plugin provides two text objects: ax and ix.
" They represent XML/HTML attributes.
" It's based on (and requires) vim-textobj-user.
"======================================================================================}}}
