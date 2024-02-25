Plug 'natecraddock/workspaces.nvim'

Plug 'editorconfig/editorconfig-vim'

Plug 'windwp/nvim-projectconfig'

Plug 'tom-anders/telescope-vim-bookmarks.nvim'
Plug 'MattesGroeger/vim-bookmarks'
" Add/remove bookmark at current line 	mm                : BookmarkToggle
" Add/edit/remove annotation at current line 	mi          : BookmarkAnnotate <TEXT>
" Jump to next bookmark in buffer 	mn                    : BookmarkNext
" Jump to previous bookmark in buffer 	mp                : BookmarkPrev
" Show all bookmarks (toggle) 	ma                        : BookmarkShowAll
" Clear bookmarks in current buffer only 	mc              : BookmarkClear
" Clear bookmarks in all buffers 	mx                      : BookmarkClearAll
" Move up bookmark at current line 	[count]mkk            : BookmarkMoveUp [<COUNT>]
" Move down bookmark at current line 	[count]mjj          : BookmarkMoveDown [<COUNT>]
" Move bookmark at current line to another line [count]mg : BookmarkMoveToLine <LINE>
" Save all bookmarks to a file                            : BookmarkSave <FILE_PATH>
" Load bookmarks from a file                              : BookmarkLoad <FILE_PATH>

" let g:bookmark_save_per_working_dir = 1
" let g:bookmark_highlight_lines = 1
let g:bookmark_sign = '🔥'
let g:bookmark_no_default_key_mappings = 1
" let g:bookmark_auto_save = 1
" let g:bookmark_auto_save_file = './git'
" " let g:bookmark_auto_save_file = '/Users/rbanda/.config/nvim/bookmarks'
" " Finds the Git super-project directory.
function! g:BMWorkDirFileLocation()
  let filename = 'bookmarks'
  let location = ''
  if isdirectory('.git')
    " Current work dir is git's work tree
    let location = getcwd().'/.git'
  else
    " Look upwards (at parents) for a directory named '.git'
    let location = finddir('.git', '.;')
  endif
  if len(location) > 0
    return location.'/'.filename
  else
    return getcwd().'/.'.filename
  endif
endfunction

Plug 'cbochs/grapple.nvim'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-session', { 'on': ['SaveSession', 'OpenSession'] }
let g:session_directory='~/.config/nvim/sessions'
let g:session_autosave='no'
