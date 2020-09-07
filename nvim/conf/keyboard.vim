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
nnoremap <F9> :Calendar<cr>
nnoremap <F12> :GitMessenger<cr>
"}}}==========================================

" Allow saving of files as sudo
cnoremap w!! w !sudo tee > /dev/null %

tnoremap X <C-\><C-n><c-^>
tnoremap Z <C-\><C-n>
vnoremap m <esc>
nnoremap Q <nop>

nmap B :tabprevious<cr>
nmap M :tabnext<cr>
imap jmc <esc>:w<cr>:tabprevious<cr>
imap jmr <esc>:w<cr>:tabnext<cr>

nnoremap S :Gwrite<cr>
nnoremap U <c-R>

" copy name
nmap yn :let @+ = expand("%:t")<cr>
" copy relative path
nmap yr :let @+ = expand("%")<cr>
" copy full path
nmap yf :let @+ = expand("%:p")<cr>

inoremap jf <esc>f
inoremap jF <esc>F
inoremap jc <esc>cc

cnoremap jj <esc>
inoremap jj <esc>

inoremap jh <esc>O
inoremap jt <esc>o
inoremap qh <cr><esc>O
nnoremap qh i<cr><esc>O<esc>cc
inoremap qt <esc>o<cr>
nnoremap qt o<cr>
nnoremap qr yyp

inoremap j. <esc>.
imap q, <esc>,
inoremap qs <esc>:w<cr>
nnoremap qs :w<cr>

nnoremap <space>rp :qa!<cr>
nnoremap rp :qa<cr>

nnoremap <space>w :e ~/vimwiki/index.md<cr>

"Add empty lines
nnoremap <space><up> :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap <space><down> :<c-u>put =repeat(nr2char(10), v:count1)<cr>

nnoremap <space>hr /<c-r>+<cr>
nnoremap <space>/ /

nnoremap <space>ha :nohlsearch<cr>
nnoremap <space>ho ~
nnoremap <space>he b~
nnoremap <space>hu g~iw
nnoremap <space>hi cgn
nnoremap <space>h* *cgn
vnoremap <space>h* *cgn
nnoremap <space>hd :echo expand('%')<cr>
nnoremap <space>hD :echo expand('%:p')<cr>
nnoremap <space>hh :e ~/.config/nvim/conf/keyboard.vim<cr>
nnoremap <space>ht :e %:h/
nnoremap <space>hn Bdf<space>i
nnoremap <space>p :put<cr>

nnoremap <space>hq :e %<cr>
nnoremap <space>hb :CocCommand explorer --sources=buffer+ --width=33<cr>
nnoremap <space>hm :Vista!!<cr>

" split html elements
vmap <space>sh :s/<[^>]*>/\r&\r/g<cr>
vnoremap r y:%s/<c-r>"/
vnoremap / y/<c-r>"<cr>

vmap <space><tab> :VSSplit<cr>
nnoremap <space>D :DeleteHiddenBuffers<cr>
nnoremap <space>cc :<c-u>MatchupWhereAmI?<cr>

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
nnoremap <space>rh <c-w>gf
nnoremap rc gf
noremap <space>rc :e <cfile><cr>
"}}}==========================================

"splits {{{===================================
" close
nnoremap sc <c-w>c
" close tab return to the buffer
nmap <space>sc scru<cr>
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
nnoremap <space>e <c-o>
nnoremap <left> <c-o>
"forward cursor
nnoremap <space>u <c-i>
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

inoremap ,h <space>=<space>
inoremap ,t <space>==<space>
inoremap ,n <space>!==<space>
inoremap ,s <space>=<space>[]<left>
inoremap ,c <space>-><space>
inoremap ,r <space>=><space>
inoremap ,l <space>=<space>''<left>
inoremap ,b <space><space><left>
inoremap ,( <space>(<cr>)<esc>O

inoremap ,u <esc>A<space>
inoremap ,e <esc>A

nnoremap <space>,, A,<Esc>
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
nmap d; dt;
nmap d, dt,
nmap d) dt)
nmap d<space> dt<space>
nnoremap dp dap
"}}}==========================================

"change until {{{=============================
nnoremap -' ct'
nnoremap -. ct.
nnoremap -, ct,
nnoremap -<space> ct<space>
nnoremap -q ct"
nnoremap -> ct>
nnoremap -< ct<
nnoremap -; ct;
nnoremap -: ct:
nnoremap -) ct)
nnoremap -( ct(
nnoremap -{ ct{
nnoremap -} ct}
nnoremap -- ct-
nnoremap -$ ct$
"}}}==========================================

"Change surround {{{==========================
nmap c{ sr{
nmap c( sr(
nmap c' sr'
nmap cq sr"
nmap c[ sr[
nmap c; ct;
nmap c, ct,
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
nnoremap m< ci<
"}}}==========================================

"Yank {{{=====================================
nnoremap y' yi'
nnoremap yq yi"
nnoremap y{ yi{
nnoremap y( yi(
nnoremap y[ yi[
nnoremap yp yap
"}}}==========================================

"semicolon {{{================================
nnoremap <space>;; A;<Esc>
inoremap ;; <esc>A;<esc>
inoremap ;z <esc>A;<cr>
au BufEnter *.py inoremap ;; <esc>A:<esc>
au BufEnter *.py nnoremap <space>;; A:<esc>
au BufEnter *.css nnoremap <space>;; A;<Esc>
"}}}==========================================

"Languages {{{==================================
"React
"===============================================
"delete react attribute
au BufEnter *.js,*.jsx nnoremap <space>dr F<space>df}
au BufEnter *.js,*.jsx nnoremap <space>ls gg/state<cr>:nohlsearch<cr>
au BufEnter *.js,*.jsx nnoremap <space>lr gg/render<cr>:nohlsearch<cr>
au BufEnter *.js,*.jsx nnoremap <space>lc gg/class<cr>:nohlsearch<cr>
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
map <space>au =ae``
nnoremap <space>ag =G
nnoremap <space>a{ =i{``
nnoremap <space>a( =i(``
nnoremap <space>a[ =i[``
nnoremap <space>at =it

vnoremap <tab> >gv
vnoremap <s-tab> <gv
nnoremap <space>ae :Tabularize /
vnoremap <space>ae :Tabularize /
nnoremap <space>a= :Tabularize /=<cr>
vnoremap <space>a= :Tabularize /=<cr>
nnoremap <space>a: :Tabularize /:\zs<cr>
vnoremap <space>a: :Tabularize /:\zs<cr>
"}}}==========================================

"Insertlessly {{{=============================
nmap <space><space> <Plug>InsertSpace
"}}}==========================================

"easymotion{{{================================
map eh <Plug>(easymotion-k)
map et <Plug>(easymotion-linebackward)
map en <Plug>(easymotion-lineforward)
map es <Plug>(easymotion-j)
imap jmh <esc><Plug>(easymotion-k)
imap jmt <esc><Plug>(easymotion-linebackward)
imap jmn <esc><Plug>(easymotion-lineforward)
imap jms <esc><Plug>(easymotion-j)

nmap / <Plug>(easymotion-sn)
imap jmm <esc><Plug>(easymotion-sn)

vmap t <Plug>(easymotion-s2)
nmap T v<Plug>(easymotion-s2)
nmap t <Plug>(easymotion-overwin-f2)
imap jmj <esc><Plug>(easymotion-overwin-f2)

nmap eg V<Plug>(easymotion-k)
nmap ec v<Plug>(easymotion-linebackward)
nmap er v<Plug>(easymotion-lineforward)
nmap el V<Plug>(easymotion-j)
imap jmg <esc>V<Plug>(easymotion-j)
imap jmc <esc>v<Plug>(easymotion-linebackward)
imap jmr <esc>v<Plug>(easymotion-lineforward)
imap jml <esc>V<Plug>(easymotion-j)
"==========================================}}}

"Rust {{{=====================================
au BufEnter *.rs nmap gd <Plug>(rust-def)
au BufEnter *.rs nmap gs <Plug>(rust-def-split)
au BufEnter *.rs nmap gx <Plug>(rust-def-vertical)
au BufEnter *.rs nmap <space>gd <Plug>(rust-doc)
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
nmap <leader>ki <Plug>SidewaysArgumentInsertBefore
nmap <leader>kI <Plug>SidewaysArgumentInsertFirst
nmap <leader>ka <Plug>SidewaysArgumentAppendAfter
nmap <leader>kA <Plug>SidewaysArgumentAppendLast
"}}}==========================================

nmap <space>f :let watcher = filewatcher#watch(".", {x,y->execute('echo y',0)})<cr>

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

nmap <silent> + <Plug>(coc-definition)
nmap <silent> ga <Plug>(coc-definition)

nmap <silent> <space>ga :tabnew %<cr><Plug>(coc-definition)
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
nmap <space>rn <Plug>(coc-rename)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" navigate chunks of current buffer
nmap <space>hj <Plug>(coc-git-prevchunk)
nmap <space>hk <Plug>(coc-git-nextchunk)
" show chunk diff at current position
nmap gs <Plug>(coc-git-chunkinfo)
" show commit contains current position
nmap gc <Plug>(coc-git-commit)

imap <c-l> <Plug>(coc-snippets-expand)

nnoremap <silent> <space>hp  :<C-u>CocList --auto-preview --normal yank<cr>

nnoremap <space>ra :CocList --top buffers<cr>
nnoremap <space>re :CocList --auto-preview --top files<cr>
nnoremap <space>ru :CocList --auto-preview --top lines<cr>
nnoremap <space>rd :CocList --auto-preview --top commits<cr>
nnoremap <space>rr :CocList --auto-preview --top grep<space>
nnoremap <space>rg :CocList --auto-preview --top gstatus<cr>
nnoremap rm :CocList --top windows<cr>
nnoremap rs :CocList --auto-preview diagnostics<cr>

nnoremap <space>mm :CocCommand bookmark.toggle<cr>
nnoremap <space>mt :CocCommand bookmark.annotate<cr>
nnoremap <space>mz :CocCommand bookmark.clearForCurrentFile<cr>
nnoremap <space>mx :CocCommand bookmark.clearForAllFiles<cr>
nnoremap <space>ma :CocList --auto-preview bookmark<cr>
"}}}==========================================

" I can paste
nnoremap ra :Buffers<cr>
nnoremap ro :GFiles<cr>
nnoremap re :Files<cr>
nnoremap ru :BLines<cr>
nnoremap ri :Lines<cr>
nnoremap rd :Commits<cr>
nnoremap rr :Rg<cr>
nnoremap rg :GFiles?<cr>

nnoremap ma :CtrlPBookmark<cr>

vmap <space>B <Plug>NameAssign
