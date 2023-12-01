source ~/.config/nvim/config/base/set.vim

call plug#begin('~/.config/nvim/plugged')

source ~/.config/nvim/config/base/objects.vim

source ~/.config/nvim/config/ui/ui.vim
source ~/.config/nvim/config/syntaxis/syntaxis.vim

source ~/.config/nvim/config/buffer/buffer.vim
source ~/.config/nvim/config/copy_paste/copy_paste.vim

source ~/.config/nvim/config/testing/testing.vim
source ~/.config/nvim/config/refactoring/refactoring.vim
source ~/.config/nvim/config/debugging/debugging.vim

source ~/.config/nvim/config/lsp/lsp.vim
source ~/.config/nvim/config/cmp/cmp.vim

source ~/.config/nvim/config/project/project.vim
source ~/.config/nvim/config/explorers/explorers.vim
source ~/.config/nvim/config/search_replace/search_replace.vim

source ~/.config/nvim/config/tools/tools.vim
source ~/.config/nvim/config/git/git.vim

source ~/.config/nvim/config/motion/motion.vim

source ~/.config/nvim/config/editing/editing.vim

call plug#end()

source ~/.config/nvim/config/ui/ui.lua
source ~/.config/nvim/config/syntaxis/syntaxis.lua

source ~/.config/nvim/config/editing/editing.lua
source ~/.config/nvim/config/motion/motion.lua

source ~/.config/nvim/config/lsp/lsp.lua
source ~/.config/nvim/config/cmp/cmp.lua

source ~/.config/nvim/config/project/project.lua
source ~/.config/nvim/config/explorers/explorers.lua
source ~/.config/nvim/config/search_replace/search_replace.lua

source ~/.config/nvim/config/refactoring/refactoring.lua
source ~/.config/nvim/config/debugging/debugging.lua

source ~/.config/nvim/config/tools/tools.lua
source ~/.config/nvim/config/git/git.lua

source ~/.config/nvim/config/scripts.vim
source ~/.config/nvim/config/autocmd.vim
source ~/.config/nvim/config/base/keyboard.vim

nmap gS :TSJToggle<cr>
