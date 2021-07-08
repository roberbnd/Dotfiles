"=============================================
"==== Keyboard layout DVORAK-Programmer ======
"=============================================
"Fs {{{=======================================
nnoremap <f1> :e ~/.config/nvim/init.vim<cr>
nnoremap <f2> :source ~/.config/nvim/init.vim<cr>
nnoremap <f3> :mksession! ~/.config/nvim/sessions/
nnoremap <f4> :source ~/.config/nvim/sessions/
nnoremap <f5> :UltiSnipsEdit<cr>
nnoremap <f6> :IndentBlanklineToggle<cr>
nnoremap <f7> :set list!<cr>
nnoremap <f8> :call ToggleWrap()<cr>
nnoremap <f9> :set number!<cr>
nnoremap <f11> :Calendar<cr>
nnoremap <F12> :VenterToggle<cr>
"}}}==========================================

nnoremap Q <nop>
  nnoremap ZZ <nop>

" Allow saving of files as sudo
cnoremap w!! w !sudo tee > /dev/null %

tnoremap }h <c-\><c-n>
tnoremap }t <c-\><c-n>:Buffers<cr>
tnoremap }m <c-\><c-n><c-^>
nnoremap }} :FloatermToggle<cr>
tnoremap }} <c-\><c-n>:FloatermToggle<cr>
nnoremap }n :FloatermNew<cr>
tnoremap }n <c-\><c-n>:FloatermNew<cr>
nnoremap }c :FloatermPrev<cr>
tnoremap }c <c-\><c-n>:FloatermPrev<cr>
nnoremap }r :FloatermNext<cr>
tnoremap }r <c-\><c-n>:FloatermNext<cr>
nnoremap }x :FloatermKill<cr>
tnoremap }x <c-\><c-n>:FloatermKill<cr>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<c-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<c-p>" : "\<S-Tab>"

vnoremap m <esc>
vnoremap <backspace> :StripTrailingWhitespace<cr>

vnoremap <space>. "+
nnoremap <space>. "+
nnoremap <space>m "+yy
nnoremap <space>y "+
nnoremap <space>' "+yi'
vnoremap , "+y

" arrows
" navigate chunks of current buffer
nmap <up> <plug>(signify-prev-hunk)
nmap <down> <plug>(signify-next-hunk)
nnoremap <left> <c-o>
nnoremap <right> <c-i>
nnoremap <space><up> :ConflictMarkerPrevHunk<cr>
nnoremap <space><down> :ConflictMarkerNextHunk<cr>
" my code (current branch)
nnoremap <space>bb :ConflictMarkerOurselves<cr>
" your code (the commit I want to merge)
nnoremap <space>bm :ConflictMarkerThemselves<cr>
nnoremap <space>bo :ConflictMarkerBoth<cr>
nnoremap <space><space> :SignifyHunkDiff<cr>
nnoremap <space><space> :SignifyHunkDiff<cr>

" hunk text object
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)

nnoremap S :Gwrite<cr>
nnoremap U <c-R>

" copy line number
nmap yl :let @* = line('.')<cr>
" copy name
nmap yn :let @* = expand("%:t")<cr>
" copy relative path
nmap yr :let @* = expand("%")<cr>
" copy full path
nmap yf :let @* = expand("%:p")<cr>
" copy branch name
nmap yb :let @* = gitbranch#name()<cr>

inoremap jf <esc>f
inoremap jF <esc>F
inoremap jc <esc>cc

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
nnoremap qS :w!<cr>
vnoremap qs <esc>:w<cr>

nnoremap <space>rp :qa!<cr>
nnoremap rp :qa<cr>

nnoremap <space>o :e ~/vimwiki/index.md<cr>

" Paste neovim's clipboard
nnoremap <space>g /<c-r>"<cr>
" Paste computer's clipboard
nnoremap <space>c /<c-r>+<cr>
" without easymotion
nnoremap <space>/ /

nnoremap <space>ha :nohlsearch<cr>
nnoremap <space>ho ~
nnoremap <space>he b~
nnoremap <space>hu g~iw
nnoremap <space>hc cgn
nmap <space>h* *cgn
vmap <space>h* *cgn
nnoremap <space>hd :echo expand('%')<cr>
nnoremap <space>hD :echo expand('%:p')<cr>
nnoremap <space>hh :e ~/.config/nvim/conf/keyboard.vim<cr>
nnoremap <space>ht :e %:h/
nnoremap <space>hn Bdf<space>i
nnoremap <space>p :put<cr>

nnoremap <space>hq :e %<cr>
nnoremap <space>hm :SymbolsOutline<cr>
nnoremap <space>hb :Vista!!<cr>

" split html elements
vmap <space>sh :s/<[^>]*>/\r&\r/g<cr>
vnoremap r y:%s/<c-r>"/
vnoremap / y/<c-r>"<cr>

vmap <space><tab> :VSSplit<cr>
nnoremap <space>d :Bdelete menu<cr>
nnoremap <space>D :!rm ~/.config/nvim/sessions/
nnoremap <space>? :<c-u>MatchupWhereAmI?<cr>


"Add empty lines
nnoremap <silent> <space>j :<c-u>put! =repeat(nr2char(10), v:count1)<cr>'[
nnoremap <silent> <space>k :<c-u>put =repeat(nr2char(10), v:count1)<cr>

"Scroll {{{===================================
nnoremap <s-tab> <c-b>
nnoremap <tab> <c-f>
vnoremap <s-tab> <c-b>
vnoremap <tab> <c-f>
"}}}==========================================

"Tabs {{{=====================================
nnoremap sp :tabnew %<cr>
nnoremap s, :tabmove -1<cr>
nnoremap s. :tabmove +1<cr>
nnoremap s; :tabclose<cr>

nnoremap se :tabfirst<cr>
nnoremap su :tablast<cr>
" close all the tabs to the right
nmap sC <cmd>.+1,$tabdo :q<cr>

nmap <space>t :tabprevious<cr>
nmap <space>n :tabnext<cr>
nmap B :tabprevious<cr>
nmap M :tabnext<cr>
"}}}==========================================

"Buffers {{{==================================
nnoremap cj :Bclose<cr>
nnoremap ck :Bclose!<cr>
nnoremap rj :FloatermNew ranger<cr>
nnoremap rk :FloatermNew lazygit<cr>
nnoremap rh <c-^>
nnoremap rc gf
nnoremap rC :e <cfile><cr>
nnoremap <space>rc <c-w>gf
"}}}==========================================

"splits {{{===================================
" close
nnoremap sc <c-w>c
" close tab return to the buffer
" nmap <space>sc scru<cr>
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
nnoremap ' ``
"back cursor
nnoremap <space>e <c-o>
"forward cursor
nnoremap <space>u <c-i>
"}}}==========================================

"Coma {{{=====================================
inoremap ,+ <right><space>+<space>
inoremap ,= <right><space>=<space>
inoremap ,> <right><space>=><space>
inoremap ,{ <right>,<space>{}<left>
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
inoremap ,b <space><space><left>

inoremap ,s <esc>A
"}}}==========================================

"Add {{{======================================
vmap [ sa[
vmap { sa{
vmap ( sa(
vmap ' sa'
vmap ! sa"
vmap - sa<space>
vmap ` sa`
"}}}==========================================

inoremap ( ()<left>
inoremap { {}<left>
inoremap [ []<left>
inoremap ' ''<left>
inoremap " ""<left>
inoremap ` ``<left>
inoremap < <><left>

"Delete {{{===================================
nmap d[ sd[
nmap d{ sd{
nmap d( sd(
nmap d' sd'
nmap d` sd`
nmap dq sd"
nmap d< sd<
nmap d<space> sd<space>
nmap d; dt;
nmap d, dt,
nmap d) dt)
nmap d<space> dt<space>
nnoremap dp dap
"}}}==========================================

"change until {{{=============================
nnoremap -' ct'
nnoremap -_ ct_
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
nnoremap -[ ct[
nnoremap -] ct]
nnoremap -- ct-
nnoremap -$ ct$
nnoremap -/ ct/
nnoremap -<bar> ct<bar>
"}}}==========================================

"Change surround {{{==========================
nmap c{ sr{
nmap c( sr(
nmap c' sr'
nmap c` sr`
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
nnoremap y' "*yi'
nnoremap yq yi"
nnoremap y{ yi{
nnoremap y( yi(
nnoremap y[ yi[
nnoremap yp yap
"}}}==========================================

"{{{==========================================
nnoremap <space>, A,<esc>
inoremap ,, <esc>A,<esc>
inoremap ,<cr> <esc>A,<cr>

nnoremap <space>; A;<esc>
inoremap ;; <esc>A;<esc>
inoremap ;<cr> <esc>A;<cr>
"}}}==========================================

"============================================
"Plugins
"=============================================

"asterisk{{===================================
map *  <Plug>(asterisk-z*)
map #  <Plug>(asterisk-z#)
map g* <Plug>(asterisk-gz*)
map g# <Plug>(asterisk-gz#)
" map *  <Plug>(asterisk-z*)<Cmd>lua require('hlslens').start()<CR>
" map #  <Plug>(asterisk-z#)<Cmd>lua require('hlslens').start()<CR>
" map g* <Plug>(asterisk-gz*)<Cmd>lua require('hlslens').start()<CR>
" map g# <Plug>(asterisk-gz#)<Cmd>lua require('hlslens').start()<CR>
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

" php is not indenting
nnoremap <space>aa :set autoindent<cr>

"easymotion{{{================================
" map eh <Plug>(easymotion-k)
map et <Plug>(easymotion-linebackward)
map en <Plug>(easymotion-lineforward)
" map es <Plug>(easymotion-j)
" imap jmh <esc><Plug>(easymotion-k)
imap jmt <esc><Plug>(easymotion-linebackward)
imap jmn <esc><Plug>(easymotion-lineforward)
" imap jms <esc><Plug>(easymotion-j)

nmap / <Plug>(easymotion-sn)
" imap jmm <esc><Plug>(easymotion-sn)

" vmap t <Plug>(easymotion-s2)
" nmap T v<Plug>(easymotion-s2)
nmap t <Plug>(easymotion-overwin-f2)
" imap jmj <esc><Plug>(easymotion-overwin-f2)

" nmap eg V<Plug>(easymotion-k)
nmap ec v<Plug>(easymotion-linebackward)
nmap er v<Plug>(easymotion-lineforward)
" nmap el V<Plug>(easymotion-j)
" imap jmg <esc>V<Plug>(easymotion-j)
" imap jmc <esc>v<Plug>(easymotion-linebackward)
" imap jmr <esc>v<Plug>(easymotion-lineforward)
" imap jml <esc>V<Plug>(easymotion-j)
"==========================================}}}

"hop{{{=======================================
nnoremap w <cmd>HopLine<cr>
vnoremap w <cmd>HopLine<cr>
nnoremap ew V<cmd>HopLine<cr>

inoremap jmm <esc><cmd>HopChar2<cr>
inoremap jmb <esc><cmd>HopLine<cr>
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
" nmap <leader>ki <Plug>SidewaysArgumentInsertBefore
" nmap <leader>kI <Plug>SidewaysArgumentInsertFirst
" nmap <leader>ka <Plug>SidewaysArgumentAppendAfter
" nmap <leader>kA <Plug>SidewaysArgumentAppendLast
"}}}==========================================

nmap <space>ra :BufExplorer<cr><Plug>(easymotion-j)

"FZF {{{======================================
" I can paste to search
nnoremap ra :Buffers<cr>
nnoremap ro :GFiles<cr>
nnoremap re :Files<cr>
nnoremap ru :BLines<cr>
nnoremap ri :Lines<cr>
nnoremap rd :Commits<cr>
nnoremap rr :Rg2<cr>
nnoremap rg :GFiles?<cr>
nnoremap rm :Windows<cr>
" nnoremap rn :Vista finder fzf<cr>
nnoremap rn :DocumentSymbol<cr>
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)

" omit the path file as string to search
command! -bang -nargs=* Rg2 call fzf#vim#grep(
            \ "rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
            \ 1, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}),
            \ <bang>0 )
"}}}==========================================

nmap mm <Plug>BookmarkToggle
nmap ma :BookmarkShowAll<cr>
nmap mn <Plug>BookmarkNext
nmap mp <Plug>BookmarkPrev
nmap mx :BookmarkClearAll<cr>

vmap <space>B <Plug>NameAssign
nnoremap <silent> ch :exe "tabn ".g:lasttab<cr>

nnoremap g<space> :Gstatus<cr>
nnoremap ga :GitMessenger<cr>
nnoremap go :Gblame<cr>
nnoremap gu :diffget //3<cr>
nnoremap ge :diffget //2<cr>
nnoremap gh :G<cr><c-w>T
nnoremap gr :SignifyHunkUndo<cr>

"Paste {{{====================================
nmap ,<up> <plug>(YoinkRotateBack)
nmap ,<down> <plug>(YoinkRotateForward)
nmap ,<left> <plug>(YoinkPostPasteSwapBack)
nmap ,<right> <plug>(YoinkPostPasteSwapForward)
nmap p <plug>(YoinkPaste_p)
nmap P <plug>(YoinkPaste_P)
nmap ,= <plug>(YoinkPostPasteToggleFormat)
"}}}==========================================

nmap ,<space> :LspTroubleDocumentToggle<cr>

"Lsp {{{=================================
" definition
lua vim.api.nvim_set_keymap('n', 'ba', '<cmd>lua vim.lsp.buf.definition()<cr>', {})
nmap <silent> <space>ba :tabnew %<cr>ba
nnoremap <silent> b, :lua require'lspsaga.provider'.preview_definition()<cr>

"references
lua vim.api.nvim_set_keymap('n', 'bo', '<cmd>lua vim.lsp.buf.references()<cr>', {})

"rename
" lua vim.api.nvim_set_keymap('n', 'be', '<cmd>lua vim.lsp.buf.rename()<cr>', {})
nnoremap be :lua require('lspsaga.rename').rename()<cr>

"formatting
lua vim.api.nvim_set_keymap('v', 'bu', '<cmd>lua vim.lsp.buf.formatting()<cr>', {})

"action
" lua vim.api.nvim_set_keymap('n', 'bu', '<cmd>lua vim.lsp.buf.code_action()<cr>', {})
nnoremap bu :lua require('lspsaga.codeaction').code_action()<cr>

"LspSaga
nnoremap <silent> <space>w :lua require'lspsaga.diagnostic'.show_line_diagnostics()<cr>
nnoremap <silent> <space><left> :lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<cr>
nnoremap <silent> <space><right> :lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<cr>
"}}}==========================================

" Completition
"map <c-p> to manually trigger completion
imap <tab> <Plug>(completion_smart_tab)
imap <s-tab> <Plug>(completion_smart_s_tab)
imap <silent> <c-p> <Plug>(completion_trigger)
" inoremap <expr> <Tab>   pumvisible() ? "\<c-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<c-p>" : "\<S-Tab>"
