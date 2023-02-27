" GIT
" delta: https://github.com/dandavison/delta
" lazygit: https://github.com/jesseduffield/lazygit
" grv: https://github.com/rgburke/grv
" tig: https://github.com/jonas/tig
"manage git with lazygit/tig and floatterm

Plug 'TimUntersberger/neogit'
"{{{======================================================================================
"======================================================================================}}}

Plug 'kdheepak/lazygit.nvim'
"{{{======================================================================================
" to see lazygit config path
"======================================================================================}}}

" Plug 'pwntester/octo.nvim'
"{{{======================================================================================
" Install GitHub CLI
" Install plenary.nvim
" Install telescope.nvim
" Install nvim-web-devicons
" https://github.com/pwntester/octo.nvim
" checkout_pr = { lhs = "<space>po", desc = "checkout PR" },
"======================================================================================}}}

Plug 'rhysd/git-messenger.vim', { 'on': 'GitMessenger' }
"{{{======================================================================================
" It shows the history of commits under the cursor in popup window.
"======================================================================================}}}

Plug 'akinsho/git-conflict.nvim'
"{{{======================================================================================
" GitConflictChooseOurs - Select the current changes.
" GitConflictChooseTheirs - Select the incoming changes.
" GitConflictChooseBoth - Select both changes.
" GitConflictChooseNone - Select both none of the changes.
" GitConflictNextConflict - Move to the next conflict.
" GitConflictPrevConflict - Move to the previous conflict.
" GitConflictListQf - Get all conflict to quickfix
" co - choose ours
" ct - choose theirs
" cb - choose both
" c0 - choose none
" ]x - move to previous conflict
" [x - move to next conflict
" Plug 'rhysd/conflict-marker.vim'
"======================================================================================}}}

Plug 'lewis6991/gitsigns.nvim', {'branch': 'main'}
"{{{======================================================================================
"======================================================================================}}}

Plug 'itchyny/vim-gitbranch'
"{{{======================================================================================
" get branch name
"======================================================================================}}}

Plug 'sindrets/diffview.nvim', { 'branch': 'main' }
"{{{======================================================================================
"======================================================================================}}}

Plug 'AndrewRadev/linediff.vim', { 'on': 'Linediff' }
Plug 'statox/vim-compare-lines', { 'on': 'CL' }

Plug 'LhKipp/nvim-git-fixer'
"{{{======================================================================================
"-- Create a `fixup!` commit only with the contents of the hunk under the cursor
" -- Use a telescope based picker to select the commit to fix
" require('fixer/picker/telescope').commit{hunk_only=true, type="fixup"} 

" -- Create an `amend!` commit with the contents of the index
" -- Use a telescope based picker to select the commit to fix
" require('fixer/picker/telescope').commit{type="amend"}

" -- `type`'s supported are: 'fixup', 'amend', 'reword' and 'squash'

" -- For convenience:  Create a 'normal' commit with the contents of the hunk under the cursor
" require('fixer').commit_hunk()
"======================================================================================}}}
