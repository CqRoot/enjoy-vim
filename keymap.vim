let mapleader = " "

" Buffer
nmap <silent> J :bp!<CR>
nmap <silent> K :bn!<CR>
nmap <silent> <leader>d :bp\|bd #<CR>

" Emacs-like keymap
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
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

" Auto run script
function! RunScript()
    if &filetype == 'sh'
        exec "w"
        exec "!bash -x %"
    elseif &filetype == 'python'
        exec "w"
        exec "!python2 %"
    elseif &filetype == 'vim'
        exec "w"
        exec "source %"
    endif
endfunc
