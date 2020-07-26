"============================================
"==== Keyboard layout DVORAK-Programmer =====
"============================================
" don't use <c-o>, <c-i>, <c-m>=return
" In insert mode, pressing <c-o> switches to
" normal mode for one command, then switches
" back to insert mode when the command is
" finished.
"============================================

"Fs {{{=======================================
nnoremap <F1> :e ~/.config/nvim/init.vim<cr>
nnoremap <F2> :source ~/.config/nvim/init.vim<cr>
nnoremap <F3> :SaveSession!<space>
nnoremap <F4> :OpenSession<space>
nnoremap <F5> :CocCommand snippets.openSnippetFiles<cr>
nnoremap <F6> :call ToggleWrap()<cr>
nnoremap <F7> :Limelight!!<cr>
nnoremap <F8> :TabooRename<space>
nnoremap <F12> :GitMessenger<cr>
"}}}==========================================

" Allow saving of files as sudo
cnoremap w!! w !sudo tee > /dev/null %

tnoremap X <C-\><C-n><c-^>
tnoremap Z <C-\><C-n>
vnoremap m <esc>
nnoremap Q <nop>
nnoremap T :tabprevious<cr>
nnoremap M :tabnext<cr>
nnoremap S :Gwrite<cr>
nnoremap <leader>C :CocCommand explorer<cr>
nnoremap U <c-R>

nmap yr :let @+ = expand("%")<cr>
nmap yn :let @+ = expand("%:t")<cr>
nmap yf :let @+ = expand("%:p")<cr>

inoremap jf <esc>f
inoremap jF <esc>F
inoremap jc <esc>cc

cnoremap jj <esc>
inoremap jj <esc>

inoremap jh <esc>O
inoremap qh <cr><esc>O
nnoremap qh i<cr><esc>O
inoremap jt <esc>o
inoremap qt <esc>o<cr>
nnoremap qt o<cr>
nnoremap qr yyp

inoremap j. <esc>.
imap qa <esc>:w<cr>-a
imap q, <esc>,
inoremap qs <esc>:w<cr>
nnoremap qs :w<cr>

nnoremap QQ :w<cr>:qa<cr>

nnoremap <leader>rp :qa!<cr>
nnoremap rp :qa<cr>

nnoremap <leader>cp yip
nnoremap <leader>w :e ~/vimwiki/index.md<cr>

"Add empty lines
nnoremap <leader>h. :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <leader>h, :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[

nnoremap <leader>hf :exe ':silent !firefox %'<cr>
nnoremap <leader>hc :exe ':silent !chromium-browser %'<cr>
nnoremap <leader>hr /<c-r>+<cr>

nnoremap <leader>ha :nohlsearch<cr>
nnoremap <leader>ho ~
nnoremap <leader>he b~
nnoremap <leader>hu g~iw
nnoremap <leader>hi cgn
nnoremap <leader>hd :echo expand('%')<cr>
nnoremap <leader>hD :echo expand('%:p')<cr>
nnoremap <leader>hh :put<cr>
nnoremap <leader>ht :e %:h/
nnoremap <leader>hn Bdf<space>i
nnoremap <leader>hj :Dirvish %<cr>
nnoremap <leader>hk :Dirvish<cr>

nnoremap <leader>hq :e %<cr>
nnoremap <leader>hb :e ~/.config/nvim/conf/keyboard.vim<cr>
nnoremap <leader>hm :Vista!!<cr>

" split html elements
vmap <leader>st :s/<[^>]*>/\r&\r/g<cr>
vnoremap r y:%s/<c-r>"/
vnoremap / y/<c-r>"<cr>

nnoremap <leader>vu V=
nnoremap <leader>va V
nmap <leader>ve V<tab><esc>
nmap <leader>vo V<s-tab><esc>

nnoremap <leader>D :DeleteHiddenBuffers<cr>
nnoremap <leader>ma :<c-u>MatchupWhereAmI?<cr>
nnoremap <leader>cc :CopyPath<cr>

"Scroll {{{===================================
nnoremap <s-tab> <c-b>
nnoremap <tab> <c-f>
vnoremap <s-tab> <c-b>
vnoremap <tab> <c-f>
"}}}==========================================

"Tabs {{{=====================================
nnoremap sp :tabnew<cr>
nnoremap s, :tabmove -1<cr>
nnoremap s. :tabmove +1<cr>
nnoremap s; :tabclose<cr>

nnoremap se :tabfirst<cr>
nnoremap su :tablast<cr>
"}}}==========================================

"Buffers {{{==================================
nnoremap cj :Bclose<cr>
nnoremap ck :Bclose!<cr>
nnoremap rj :Ranger<cr>
nnoremap rk :RangerWorkingDirectory<cr>
nnoremap rh <c-^>
nnoremap rc gf
noremap <leader>rc :e <cfile><cr>
nnoremap <leader>rh <c-w>gf
nmap -- *cgn
nmap -, ver
nmap -j yiw
nmap -k ByEw
"}}}==========================================

"splits {{{===================================
" close
nnoremap sc <c-w>c
" close tab return to the buffer
nmap <leader>sc scru<cr>
" split vertically"
nnoremap s+ <c-w>v
" equal wide"
nnoremap s= <c-w>=
" split horizontally"
nnoremap s- <c-w>s
" go right"
nnoremap ss <c-w>l0
" go up"
nnoremap st <c-w>k
" go down"
nnoremap sn <c-w>j
" go left
nnoremap sh <c-w>h0
" changes vertically to horizontally
nnoremap sk <c-w>K
" changes horizontally to vertically
nnoremap sj <c-w>H
" swap splits"
nnoremap sw <c-w>R
" go file under cursor"
nnoremap sf <c-w>f

" Resize split
"============================================
" vertically
nnoremap s> :vertical resize +15<cr>
nnoremap s< :vertical resize -15<cr>
" maximum width
nnoremap sq <c-w><bar>
" Horizontally
nnoremap s{ :5winc +<cr>
nnoremap s} :5winc -<cr>
" maximum height
nnoremap sb <c-w>_
"}}}==========================================

"Switching line {{{===========================
nnoremap <c-r> :m .+1<cr>==
inoremap <c-r> <ESC>:m .+1<cr>==gi
vnoremap <c-r> :m '>+1<cr>gv=gv
nnoremap <c-c> :m .-2<cr>==
inoremap <c-c> <ESC>:m .-2<cr>==gi
vnoremap <c-c> :m '<-2<cr>gv=gv
"}}}==========================================

"Navegation {{{===============================
nnoremap , ``
"back cursor
nnoremap <leader>e <c-o>
nnoremap <left> <c-o>
"forward cursor
nnoremap <leader>u <c-i>
nnoremap <right> <c-i>
nmap <down> ga
nmap <up> t
"}}}==========================================

"Coma {{{=====================================
inoremap ,+ <right><space>+<space>
inoremap ,= <right><space>=<space>
inoremap ,> <right><space>=><space>
inoremap ,} <right>,<space>{}<left>
inoremap ,[ <right>,<space>[]<left>
inoremap ,' <right>,<space>''<left>
inoremap ," <right>,<space>""<left>
inoremap ,- <right>,<space>
inoremap ,. <right><space>
inoremap ,; <right>:<space>
inoremap ,: <right>:<cr>

inoremap ,( <space>(<cr>)<esc>O
inoremap ,h <space>==<space>
inoremap ,t <space>=<space>
inoremap ,n <space>!==<space>
inoremap ,s <space>=<space>[]<left>
inoremap ,c <space>-><space>
inoremap ,r <space>=><space>
inoremap ,l <space>=<space>''<left>
inoremap ,b <space><space><left>

inoremap ,a <esc>A<space>
inoremap ,o <esc>A
inoremap ,e <esc><c-o>
inoremap ,g <esc>t
inoremap ,f <esc>f

nnoremap <leader>,, A,<Esc>
inoremap ,, <esc>A,<Esc>
inoremap ,z <esc>A,<cr>
"}}}==========================================

"Add {{{======================================
vmap [ sa[
vmap { sa{
vmap ( sa(
vmap ' sa'
vmap q sa"
vmap <space><space> sa<space>
"}}}==========================================

"Delete {{{===================================
nmap d[ sd[
nmap d{ sd{
nmap d( sd(
nmap d' sd'
nmap dq sd"
nmap d<space> sd<space>
nmap d; df;
nmap d, df,
nmap d<space> df<space>
nnoremap dp dap
"}}}==========================================

"Change {{{===================================
nmap c{ sr{
nmap c( sr(
nmap c' sr'
nmap cq sr"
nmap c[ sr[
nmap c; cf;
nmap c, cf,
nmap c<space> cf<space>
"}}}==========================================

"Modify {{{===================================
nnoremap m' ci'
nnoremap mq ci"
nnoremap m{ ci{
nnoremap m( ci(
nnoremap m[ ci[
nnoremap m; ct;
nnoremap m<space> ct<space>
"}}}==========================================

"Yank {{{=====================================
nnoremap y' yi'
nnoremap yq yi"
nnoremap y{ yi{
nnoremap y) yi)
nnoremap yp yap
"}}}==========================================

nnoremap -' ct'
nnoremap -<space> ct<space>
nnoremap -q ct"

"semicolon {{{================================
nnoremap <leader>;; A;<Esc>
inoremap ;; <esc>A;<esc>
inoremap ;z <esc>A;<cr>
au BufEnter *.py inoremap ;; <esc>A:<esc>
au BufEnter *.py nnoremap <leader>;; A:<esc>
au BufEnter *.css nnoremap <leader>;; A;<Esc>
"}}}==========================================

"Languages {{{==================================
"React
"===============================================
"delete react attribute
au BufEnter *.js,*.jsx nnoremap <leader>dr F<space>df}
au BufEnter *.js,*.jsx nnoremap <leader>ls gg/state<cr>:nohlsearch<cr>
au BufEnter *.js,*.jsx nnoremap <leader>lr gg/render<cr>:nohlsearch<cr>
au BufEnter *.js,*.jsx nnoremap <leader>lc gg/class<cr>:nohlsearch<cr>
"}}}==========================================

"============================================
"Plugins
"=============================================

"asterisk{{===================================
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
"}}}==========================================

"vim-textobj-punctuation{{{===================
xmap u iu
omap u iu
"}}}==========================================

"EasyAlign {{{================================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap gp <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap gp <Plug>(EasyAlign)
"}}}==========================================

"Align {{{====================================
map <leader>au =ae``
nnoremap <leader>ag =G
nnoremap <leader>a{ =i{``
nnoremap <leader>a( =i(``
nnoremap <leader>a[ =i[``
nnoremap <leader>at =it

vnoremap <tab> >gv
vnoremap <s-tab> <gv
nnoremap <leader>ae :Tabularize /
vnoremap <leader>ae :Tabularize /
nnoremap <Leader>a= :Tabularize /=<cr>
vnoremap <Leader>a= :Tabularize /=<cr>
nnoremap <Leader>a: :Tabularize /:\zs<cr>
vnoremap <Leader>a: :Tabularize /:\zs<cr>
"}}}==========================================

"Insertlessly {{{=============================
nmap <leader><leader> <Plug>InsertSpace
"}}}==========================================

"easymotion{{{================================
map eh <Plug>(easymotion-k)
map et <Plug>(easymotion-linebackward)
map en <Plug>(easymotion-lineforward)
map es <Plug>(easymotion-j)
nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
vmap t <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-overwin-f2)
nmap -. <Plug>(easymotion-s)
smap <A-t> <Plug>(easymotion-s)
nmap eH Veh
nmap eT vet
nmap eN ven
nmap eS Ves
imap jbh <esc>eH
imap jbt <esc>eT
imap jbn <esc>eN
imap jbs <esc>eS
imap jmj <esc>t
imap jmh <esc>eh
imap jmt <esc>et
imap jmn <esc>en
imap jms <esc>es
imap jm/ <esc>/
imap jmc <esc><leader>t
imap jmr <esc><leader>n
"==========================================}}}

"Rust {{{=====================================
au BufEnter *.rs nmap gd <Plug>(rust-def)
au BufEnter *.rs nmap gs <Plug>(rust-def-split)
au BufEnter *.rs nmap gx <Plug>(rust-def-vertical)
au BufEnter *.rs nmap <leader>gd <Plug>(rust-doc)
"}}}==========================================

"Go {{{=======================================
au BufEnter *.go nmap \r <Plug>(go-run)
au BufEnter *.go nmap \b <Plug>(go-build)
au BufEnter *.go nmap \t <Plug>(go-test)
au BufEnter *.go nmap \c <Plug>(go-coverage)
au BufEnter *.go nmap \gb <Plug>(go-doc-browser)
"}}}==========================================

"Sideways {{{=================================
nnoremap << :SidewaysLeft<cr>
nnoremap >> :SidewaysRight<cr>
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI
"}}}==========================================

nmap <leader>f :let watcher = filewatcher#watch(".", {x,y->execute('echo y',0)})<cr>

"coc {{{======================================
" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <down>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><s-tab> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<cr>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<cr>"
endif

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> ga <Plug>(coc-definition)
nmap <silent> <leader>ga :tabnew %<cr><Plug>(coc-definition)
nmap <silent> g+ s+ga
nmap <silent> g- s-ga

nnoremap <silent> K :call <SID>show_documentation()<cr>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" navigate chunks of current buffer
nmap [g <Plug>(coc-git-prevchunk)
nmap ]g <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)

imap <c-l> <Plug>(coc-snippets-expand)

" nnoremap -a :CocCommand todolist.create<cr>
nnoremap -a :CtrlPBuffer<cr>
nnoremap -o :CocList todolist<cr>
nnoremap -e :CocList files<cr>
nnoremap -u :CocList lines<cr>
nnoremap -d :CocList commits<cr>
nnoremap -h :CocList grep<cr>
nnoremap -t :CocList gstatus<cr>
nnoremap -n :CocList windows<cr>
nnoremap -c :CocList diagnostics<cr>
nnoremap -r :CocList outline<cr>
nnoremap -m :CocList symbols<cr>

nnoremap <silent> <leader>y  :<C-u>CocList -A --normal yank<cr>
"}}}==========================================

" nnoremap ra :Buffers<cr>
" nnoremap ro :GFiles<cr>
" nnoremap re :Files<cr>
" nnoremap ru :BLines<cr>
" nnoremap ri :Lines<cr>
" nnoremap rd :Commits<cr>
" nnoremap rg :GFiles?<cr>
" nnoremap rr :Rg<cr>
" nnoremap rm :Windows<cr>
" nmap <leader>ro :CtrlP<cr>

nnoremap ra :Buffers<cr>
nnoremap ro :GFiles<cr>
nnoremap re :Files<cr>
nnoremap ru :BLines<cr>
nnoremap ri :Lines<cr>
nnoremap rd :Commits<cr>
nnoremap rg :CtrlPModified<cr>
nnoremap rr :Rg<cr>
nnoremap rm :CtrlPSmartTabs<cr>
nnoremap ma :CtrlPBookmark<cr>

nnoremap <leader>ra :BufExplorer<cr>

nnoremap +<leader> :call vimspector#ToggleBreakpoint()<cr>
nnoremap ++ :call vimspector#Continue()<cr>
nnoremap +o :call vimspector#StepOut()<cr>
nnoremap +e :call vimspector#StepInto()<cr>
nnoremap +u :call vimspector#StepOver()<cr>
nnoremap +, :call vimspector#Pause()<cr>
nnoremap +. :call vimspector#Stop()<cr>
nnoremap +; :call vimspector#Restart()<cr>
nnoremap +a :VimspectorReset<cr>

nmap <leader>t <Plug>(simple-todo-mark-switch)
nmap <leader>n <Plug>(simple-todo-new-start-of-line)

vmap <leader>B <Plug>NameAssign
