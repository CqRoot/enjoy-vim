let mapleader = " "

" Buffer {
  nmap <silent> J :bp!<CR>
  nmap <silent> K :bn!<CR>
  nmap <silent> <leader>d :bp\|bd #<CR>
" }

" Emacs-like keymap {
  cnoremap <C-a> <Home>
  cnoremap <C-e> <End>
  " cnoremap <C-p> <Up>
  " cnoremap <C-n> <Down>
  cnoremap <C-b> <Left>
  cnoremap <C-f> <Right>
  cnoremap <M-b> <S-Left>
  cnoremap <M-f> <S-Right>

  inoremap <C-a> <Home>
  inoremap <C-e> <End>
  inoremap <C-p> <Up>
  inoremap <C-n> <Down>
  inoremap <C-b> <Left>
  inoremap <C-f> <Right>
  inoremap <M-b> <S-Left>
  inoremap <M-f> <S-Right>
" }

nmap <leader>r :call RunScript()<CR>
" Auto run script
function! RunScript()
  exec "w"
  if &filetype == 'sh'
    exec "!bash -x %"
  elseif &filetype == 'python'
    exec "!python %"
  elseif &filetype == 'vim'
    exec "source %"
  elseif &filetype == 'go'
    exec "!go run %"
  elseif &filetype == 'tmux'
    exec "!tmux source %"
  endif
endfunc

" Terminal {
  nnoremap <silent> <A-=> :bo vsplit \| terminal<CR>
  nnoremap <silent> <A--> :bo split \| terminal<CR>

  if has('nvim')
      tnoremap <Esc> <C-\><C-n>
      tnoremap <A-h> <C-\><C-N><C-w>h
      tnoremap <A-j> <C-\><C-N><C-w>j
      tnoremap <A-k> <C-\><C-N><C-w>k
      tnoremap <A-l> <C-\><C-N><C-w>l
  endif
  inoremap <A-h> <C-\><C-N><C-w>h
  inoremap <A-j> <C-\><C-N><C-w>j
  inoremap <A-k> <C-\><C-N><C-w>k
  inoremap <A-l> <C-\><C-N><C-w>l
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l
" }

" Plugin {
" }
