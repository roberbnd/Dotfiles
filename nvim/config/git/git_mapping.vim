" https://vi.stackexchange.com/questions/5921/easiest-way-to-switch-git-branches
function! s:changebranch(branch)
    silent execute 'Git checkout' . a:branch
endfunction

command! -bang Gbranch call fzf#run({ 'source': 'git branch --no-color | grep -v "^\* " ', 'sink': function('s:changebranch') })

" status
nnoremap rk :FloatermNew lazygit<cr>
nnoremap g<space> :Neogit<cr>
nnoremap <space>gs :FloatermNew tig status<cr>
" nnoremap <space>gss :FzfLua git_status<cr>

nnoremap gs :Gitsigns stage_buffer<cr>
nnoremap eh :FzfLua git_files<cr>
nnoremap es :FzfLua git_status<cr>

nnoremap <space>gm :GitMessenger<cr>
" nnoremap <space>g<space> :G<cr><c-w>T
" nnoremap <space>gh :Gbranch<cr>
nnoremap <space>gb :FzfLua git_branches<cr>

nnoremap <space>gD :Gitsigns toggle_deleted<cr>
" nnoremap <space>gD :only<cr>:diffoff<cr>
nnoremap <space>gM :Gitsigns setloclist<cr>

nnoremap gV :Gitsigns select_hunk<cr>
nnoremap gj :Gitsigns prev_hunk<cr>
nnoremap gk :Gitsigns next_hunk<cr>
nnoremap gr :Gitsigns reset_hunk<cr>
" nnoremap <space>ghr :Gitsigns reset_hunk<cr>
nnoremap gp :Gitsigns preview_hunk<cr>
nnoremap <space>ghl :Gitsigns toggle_linehl<cr>

nnoremap <space>go :GHOpenPR<cr>
nnoremap <space>gc :GHClosePR<cr>

" nnoremap <space><up> :ConflictMarkerPrevHunk<cr>
" nnoremap <space><down> :ConflictMarkerNextHunk<cr>
"my code (current branch)
nnoremap <space>gc<up> :ConflictMarkerOurselves<cr>
"your code (the commit I want to merge - incoming changes)
nnoremap <space>gc<down> :ConflictMarkerThemselves<cr>
nnoremap <space>gcb :ConflictMarkerBoth<cr>

nnoremap <space>gds :Gdiffsplit<cr>
nnoremap <space>gde :diffget //2<cr>
nnoremap <space>gdu :diffget //3<cr>
nnoremap <space>gdt :Gitsigns diffthis<cr>
nnoremap <space>gdf :DiffviewFileHistory %<cr>
nnoremap <space>gdo :DiffviewOpen<cr>
nnoremap <space>gdc :DiffviewClose<cr>
nnoremap <space>gdf :DiffviewToggleFiles<cr>

"diff lines
vmap <space>d :Linediff<cr>

" nnoremap ro :GFiles<cr>
" Insert file path with telescope

" nnoremap rd :Commits<cr>
nnoremap <space>gc :FzfLua git_bcommits<cr>

" copy branch name
nmap <space>gy :let @+ = gitbranch#name()<cr>
