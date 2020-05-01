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

nmap ' ``
tnoremap X <C-\><C-n><c-^>
tnoremap Z <C-\><C-n>
vnoremap T <esc>
nnoremap M :call lightline#update()<cr>
nnoremap S :!git add .<cr><cr>
nnoremap <leader>T :Tmuxline powerline<cr>

inoremap jf <esc>f
inoremap jF <esc>F
inoremap jc <esc>cc

cnoremap jj <esc>
inoremap jj <esc>

imap jh <esc>O
imap jt <esc>o

"Add empty lines
nnoremap <leader>h. :<c-u>put =repeat(nr2char(10), v:count1)<cr>
nnoremap <leader>h, :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap <leader>hf :exe ':silent !firefox %'<CR>
nnoremap <leader>hc :exe ':silent !chromium-browser %'<CR>
nnoremap <leader>hr <c-R>
nnoremap <leader>hj :NERDTreeToggle<cr>
nnoremap <leader>hk :NERDTreeFind<cr>


nnoremap <leader>cp yip

nnoremap <leader>ha :nohlsearch<CR>
nnoremap <leader>ho ~
nnoremap <leader>he b~
nnoremap <leader>hu g~iw
nnoremap <leader>hi cgn
nnoremap <leader>hd :echo expand('%')<cr>
nnoremap <leader>hh :put<CR>
nnoremap <leader>ht :e %:h/
nnoremap <leader>hn Bdf<space>i

nnoremap <leader>hq :e %<cr>
nnoremap <leader>hb :e ~/.config/nvim/conf/keyboard.vim<cr>
nnoremap <leader>hm :Vista!!<cr>
nnoremap <leader>H :CocCommand explorer<cr>

" split html elements
vmap <leader>st :s/<[^>]*>/\r&\r/g<cr>
vnoremap r y:%s/<c-r>"/
vnoremap / y/<c-r>"<cr>
nnoremap <leader>/ /<c-r>"

nnoremap <leader>vu V=
nnoremap <leader>va V
nmap <leader>ve V<tab><esc>
nmap <leader>vo V<s-tab><esc>

nnoremap <leader>D :DeleteHiddenBuffers<cr>
nnoremap <leader>ma :<c-u>MatchupWhereAmI?<cr>

imap qa <esc>:w<cr>ra
imap q, <esc>,
inoremap qc <esc>o<cr>
nnoremap qc o<cr>
inoremap qn <cr><esc>O
nnoremap qn i<cr><esc>O
inoremap qs <esc>:w!<cr>
nnoremap qs :w!<cr>
inoremap qr <esc>yyp
nnoremap qr yyp
inoremap qh <cr>
nnoremap q' yi'
nnoremap q" yi"
nnoremap q{ yi{
nnoremap q) yi)
nnoremap rp :qa<cr>
nnoremap r; :qa!<cr>
nnoremap QQ :w<cr>:qa<cr>

"Scroll {{{===================================
nnoremap s. <c-e>
nnoremap s, <c-y>
nnoremap so <c-u>
nnoremap se <c-d>

nnoremap <s-tab> <c-b>
nnoremap <tab> <c-f>
vnoremap <s-tab> <c-b>
vnoremap <tab> <c-f>

vnoremap s. <c-e>
vnoremap s, <c-y>
vnoremap so <c-u>zz
vnoremap se <c-d>zz

nnoremap <leader>\t <c-w>v<c-w>l<c-f><c-w>h
nnoremap <leader>\a <c-w>h<c-b><c-b><c-w>l<c-b><c-b><c-w>h
nnoremap <leader>\u <c-w>h<c-f><c-f><c-w>l<c-f><c-f><c-w>h
"}}}==========================================

"Tabs {{{=====================================
nnoremap sp :tabnew<cr>
nnoremap s, :tabprevious<cr>
nnoremap s. :tabnext<cr>
nnoremap s; :tabclose<cr>

nnoremap <leader>s; :tabr<cr>
nnoremap <leader>s, :tabm +1<cr>
nnoremap <leader>s. :tabm -1<cr>
nnoremap <leader>sp :tabl<cr>
"}}}==========================================

"Buffers {{{==================================
nnoremap cj :Bclose<cr>
nnoremap ck :Bclose!<cr>
nnoremap rj :Ranger<cr>
nnoremap rk :RangerWorkingDirectory<cr>
nnoremap rh <c-^>
nnoremap rc gf
nmap -j *cgn
nmap -, ver
nmap -- veS
nmap -k yiw
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
" nnoremap ss <c-w>l0
nnoremap ss :TmuxNavigateRight<cr>
" go up"
" nnoremap st <c-w>k0
nnoremap st :TmuxNavigateUp<cr>
" go down"
" nnoremap sn <c-w>j0
nnoremap sn :TmuxNavigateDown<cr>
" go left
" nnoremap sh <c-w>h0
nnoremap sh :TmuxNavigateLeft<cr>
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
" nnoremap s+ :5winc +<cr>
" nnoremap s- :5winc -<cr>
" maximum height
nnoremap sb <c-w>_
"}}}==========================================

"Switching line {{{===========================
nnoremap <c-r> :m .+1<CR>==
inoremap <c-r> <ESC>:m .+1<CR>==gi
vnoremap <c-r> :m '>+1<CR>gv=gv
nnoremap <c-c> :m .-2<CR>==
inoremap <c-c> <ESC>:m .-2<CR>==gi
vnoremap <c-c> :m '<-2<CR>gv=gv
"}}}==========================================

"Navegation {{{===============================
nnoremap ,, ``
"back cursor
nnoremap r, <c-o>
"forward cursor
nnoremap r. <c-i>
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
vmap " sa"
vmap <space><space> sa<space>
"}}}==========================================

"Delete {{{===================================
nmap d[ sd[
nmap d{ sd{
nmap d( sd(
nmap d' sd'
nmap d" sd"
nmap d<space> sd<space>
nmap d; df;
nmap d, df,
nmap d<space> df<space>
"}}}==========================================

"Change {{{==================================
nmap c{ sr{
nmap c( sr(
nmap c' sr'
nmap cq sr"
nmap c[ sr[
nmap c; cf;
nmap c, cf,
nmap c<space> cf<space>
"}}}==========================================

"semicolon {{{==================================
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
map <leader>ao =ae``
nnoremap <leader>ag =G
nnoremap <leader>a{ =i{``
nnoremap <leader>a( =i(``
nnoremap <leader>a[ =i[``
nnoremap <leader>at =it

vnoremap <tab> >gv
vnoremap <s-tab> <gv
nnoremap <leader>ae :Tabularize /
vnoremap <leader>ae :Tabularize /
nnoremap <Leader>a= :Tabularize /=<CR>
vnoremap <Leader>a= :Tabularize /=<CR>
nnoremap <Leader>a: :Tabularize /:\zs<CR>
vnoremap <Leader>a: :Tabularize /:\zs<CR>
"}}}==========================================

"Insertlessly {{{=============================
nmap <leader><leader> <Plug>InsertSpace
"}}}==========================================

"easymotion{{{================================
map ,h <Plug>(easymotion-k)
map ,t <Plug>(easymotion-linebackward)
map ,n <Plug>(easymotion-lineforward)
map ,s <Plug>(easymotion-j)
nmap / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
vmap t <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-overwin-f2)
nmap -. <Plug>(easymotion-s)
smap <A-t> <Plug>(easymotion-s)
nmap <leader>,h V,h
nmap <leader>,t v,t
nmap <leader>,n v,n
nmap <leader>,s V,s
imap jmj <esc>t
imap jmh <esc>,h
imap jmt <esc>,t
imap jmn <esc>,n
imap jms <esc>,s
imap jm/ <esc>/
imap jmc <esc>ra
imap jmr <esc>rp
imap jbh <esc><leader>,h
imap jbt <esc><leader>,t
imap jbn <esc><leader>,n
imap jbs <esc><leader>,s
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

nmap + :call quickui#menu#open()<cr>

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
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

nmap <silent> ga <Plug>(coc-definition)
nmap <silent> go s+ga

nnoremap <silent> K :call <SID>show_documentation()<CR>
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

nnoremap -a :CocCommand todolist.create<cr>
nnoremap -o :CocList todolist<cr>
nnoremap -e :CocList files<cr>
nnoremap -u :CocList lines<cr>
nnoremap -d :CocList commits<cr>
nnoremap -h :CocList grep<cr>
nnoremap -t :CocList gstatus<cr>
nnoremap -t :CocList windows<cr>
nnoremap -c :CocList diagnostics<cr>
nnoremap -r :CocList outline<cr>
nnoremap -- :CocList yank<cr>
nnoremap -m :CocList symbols<cr>
"}}}==========================================

nnoremap ra :Buffers<cr>
nnoremap ro :GFiles<cr>
nnoremap re :Files<cr>
nnoremap ru :Lines<cr>
nnoremap ri :BLines<cr>
nnoremap rd :Commits<cr>
nnoremap rt :GFiles?<cr>
nnoremap rr :Rg<cr>
nnoremap rm :Windows<cr>

nmap ma :CtrlPBookmark<cr>
nmap <leader>ro :CtrlP<cr>

nnoremap +<leader> :call vimspector#ToggleBreakpoint()<cr>
nnoremap ++ :call vimspector#Continue()<cr>
nnoremap +o :call vimspector#StepOut()<cr>
nnoremap +e :call vimspector#StepInto()<cr>
nnoremap +u :call vimspector#StepOver()<cr>
nnoremap +, :call vimspector#Pause()<cr>
nnoremap +. :call vimspector#Stop()<cr>
nnoremap +; :call vimspector#Restart()<cr>
nnoremap +a :VimspectorReset<cr>
