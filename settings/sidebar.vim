" nerdtree {
    " 自动打开NERDTree
    " autocmd vimenter * NERDTree | wincmd p
    " 自动关闭NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " 最小化UI
    let NERDTreeMinimalUI=1
    " 隐藏指定扩展名的文件
    let NERDTreeIgnore = ['\.pyc$']
    " let NERDTreeWinSize=28
" }

" tagbar {
    " 不显示帮助信息
    let g:tagbar_compact = 1
    " 自动显示当前标签
    let g:tagbar_autoshowtag = 1
    let g:tagbar_vertical = 25
" }

" vista {
    autocmd bufenter * if (winnr("$") == 1 && &filetype =~# 'vista') | q | endif
    let g:vista_echo_cursor_strategy = 'floating_win'
    " let g:vista_sidebar_position = 'vertical topleft'
" }

" autocmd vimenter * NERDTree | TagbarOpen
" autocmd vimenter * wincmd l
