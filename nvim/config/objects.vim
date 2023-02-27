Plug 'kana/vim-textobj-user'
"{{{======================================================================================
" vim-textobj-user is a Vim plugin to create your own text objects.
"======================================================================================}}}

Plug 'kana/vim-textobj-entire'
"{{{======================================================================================
" ae targets the entire content of the current buffer.
" ie is similar to ae, but ie does not include leading and trailing empty lines.
"======================================================================================}}}

" Plug 'kana/vim-textobj-function'
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

" Plug 'beloglazov/vim-textobj-punctuation'
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

" Plug 'rhysd/vim-textobj-ruby', { 'for': 'ruby'}
" Plug 'whatyouhide/vim-textobj-erb', { 'for': 'eruby'}
"{{{======================================================================================
" Simple one operator-pending mapping r Operator-pending mapping r is added. dir, yar
" and other mappings are available like diw, yi'.  if, unless, case, while, until, for,
" def, module, class, do, begin blocks are selected as text-objects.
"======================================================================================}}}

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

Plug 'whatyouhide/vim-textobj-xmlattr', { 'for': ['javascript', 'html', 'eruby'] }
"{{{======================================================================================
" This vim plugin provides two text objects: ax and ix.
" They represent XML/HTML attributes.
" It's based on (and requires) vim-textobj-user.
"======================================================================================}}}

" Plug 'AndrewRadev/dsf.vim'
"{{{======================================================================================
" By pressing dsf (which stands for "delete surrounding function call")
"======================================================================================}}}

" Plug 'michaeljsmith/vim-indent-object'
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
