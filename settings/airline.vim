if index(g:plugs_order, 'vim-airline') >= 0

    " 改变状态栏风格为直的风格
    let g:airline_left_sep=' '
    let g:airline_right_sep=' '

    " 打开tabline功能
    let g:airline#extensions#tabline#enabled = 1

    " 设置tab标题显示纯文件名
    let g:airline#extensions#tabline#formatter = 'unique_tail'

    " 改变tabline风格为直的风格
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'

    let g:airline#extensions#tabline#buffer_nr_show = 1


    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " powerline font
    let g:airline_powerline_fonts = 1  " 支持 powerline 字体

endif
