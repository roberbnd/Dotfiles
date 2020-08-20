"{{{==============================================
" require hack, ranger, fzf, node, yarn
" cargo install silicon bat ripgrep
" gem install neovim solargraph
" pip install --user neovim python-language-server
" yarn add global javascript-typescript-langserver
" font: hack
" completion: coc
" searcher: fzf
" debugger: vimspector
" file manager: ranger
" statusline: airline
" motion: easymotion, asterisk
"==============================================}}}

source ~/.config/nvim/conf/set.vim

call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/conf/ui.vim
source ~/.config/nvim/conf/base.vim
source ~/.config/nvim/conf/organization.vim
source ~/.config/nvim/conf/code_organization.vim
source ~/.config/nvim/conf/tmux.vim
source ~/.config/nvim/conf/languages.vim
source ~/.config/nvim/conf/git.vim
source ~/.config/nvim/conf/objects.vim
source ~/.config/nvim/conf/props.vim
call plug#end()

source ~/.config/nvim/conf/scripts.vim
source ~/.config/nvim/conf/keyboard.vim
source ~/.config/nvim/conf/highlight.vim
source ~/.config/nvim/conf/autocmd.vim
