Plug 'rest-nvim/rest.nvim'
"{{{======================================================================================
"requires plenary
" jq (to format JSON output)
" tidy (to format HTML output)
"======================================================================================}}}

Plug 'vim-scripts/loremipsum', { 'on': 'Loremipsum'}
"{{{======================================================================================
" :Loremipsum[!] [WORDCOUNT] [PARAGRAPH_TEMPLATE] [PREFIX POSTFIX]
" Insert some random text.
" :Loreplace [REPLACEMENT] [PREFIX] [POSTFIX]
" Replace the random text with something else or simply remove it.
"======================================================================================}}}
