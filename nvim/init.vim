source ~/.config/nvim/config/set.vim

call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/config/base/base.vim
source ~/.config/nvim/config/ui/ui.vim
source ~/.config/nvim/config/syntaxis/syntaxis.vim
source ~/.config/nvim/config/editing/editing.vim
source ~/.config/nvim/config/lsp/lsp.vim
source ~/.config/nvim/config/code_organization/code_organization.vim
source ~/.config/nvim/config/objects.vim
source ~/.config/nvim/config/motion/motion.vim
source ~/.config/nvim/config/project/project.vim
source ~/.config/nvim/config/buffers.vim
source ~/.config/nvim/config/cmp/cmp.vim
source ~/.config/nvim/config/explorers/explorers.vim
source ~/.config/nvim/config/testing/testing.vim
source ~/.config/nvim/config/debugging/debugging.vim
source ~/.config/nvim/config/git/git.vim
source ~/.config/nvim/config/tools/tools.vim

call plug#end()
lua require('aerial').setup()
source ~/.config/nvim/config/scripts.vim

source ~/.config/nvim/config/ui/ui.lua
source ~/.config/nvim/config/syntaxis/syntaxis.lua
source ~/.config/nvim/config/editing/editing.lua
source ~/.config/nvim/config/lsp/lsp.lua
source ~/.config/nvim/config/code_organization/code_organization.lua
source ~/.config/nvim/config/project/project.lua
source ~/.config/nvim/config/cmp/cmp.lua
source ~/.config/nvim/config/explorers/explorers.lua
source ~/.config/nvim/config/debugging/debugging.lua
source ~/.config/nvim/config/git/git.lua
source ~/.config/nvim/config/tools/tools.lua

source ~/.config/nvim/config/autocmd.vim
source ~/.config/nvim/config/keyboard/keyboard.vim
