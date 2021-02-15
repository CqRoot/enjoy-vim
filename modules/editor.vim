if index(g:plugs_order, 'nerdcommenter') >= 0
    " 使用Ctrl+/来注释内容
    if has("win32")
        nmap <C-/> <plug>NERDCommenterToggle
        xmap <C-/> <plug>NERDCommenterToggle
    else
        nmap <C-_> <plug>NERDCommenterToggle
        xmap <C-_> <plug>NERDCommenterToggle
    endif

    " 注释分隔符左对齐，而不是按行缩进
    let g:NERDDefaultAlign = 'left'

    " 在注释分隔符后添加空格
    let g:NERDSpaceDelims = 1

    let g:NERDCustomDelimiters = {
                \ 'python': { 'left': '#' }
                \ }

    " 在Toggle时检查所有选择行
    let g:NERDToggleCheckAllLines = 1
endif

if index(g:plugs_order, 'indentLine') >= 0
    if has('nvim')
        autocmd TermOpen * IndentLinesDisable
    endif
    autocmd FileType markdown let g:indentLine_enabled=0
endif

if index(g:plugs_order, 'neoformat') >= 0
    let g:neoformat_enabled_go = ['gofmt']
endif
