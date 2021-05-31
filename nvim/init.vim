" => Install
" git, tmux, ranger, font: monaco, bat, ripgrep
" fzf: https://github.com/junegunn/fzf#installation
" nerdfonts: https://github.com/ryanoasis/nerd-fonts
" delta: https://github.com/dandavison/delta
" lazygit: https://github.com/jesseduffield/lazygit
" grv: https://github.com/rgburke/grv
" treesitter: :TSInstall all
" pip install --user neovim
" gem install neovim
" npm install -g neovim
" LSP: https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md

source ~/.config/nvim/conf/set.vim
call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/conf/ui.vim
source ~/.config/nvim/conf/base.vim
source ~/.config/nvim/conf/syntaxis.vim
source ~/.config/nvim/conf/organization.vim
source ~/.config/nvim/conf/code_organization.vim
source ~/.config/nvim/conf/git.vim
source ~/.config/nvim/conf/objects.vim
source ~/.config/nvim/conf/props.vim

call plug#end()

source ~/.config/nvim/conf/scripts.vim
source ~/.config/nvim/conf/highlight.vim
luafile ~/.config/nvim/conf/lua_scripts.lua
source ~/.config/nvim/conf/keyboard.vim
source ~/.config/nvim/conf/autocmd.vim
