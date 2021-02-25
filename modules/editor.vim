if has_key(g:plugs, 'nerdcommenter')
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

if has_key(g:plugs, 'indentLine')
    if has('nvim')
        autocmd TermOpen * IndentLinesDisable
    endif
    autocmd FileType markdown let g:indentLine_enabled=0
endif

if has_key(g:plugs, 'neoformat')
    let g:neoformat_go_golines = {
                \ 'exe': 'golines',
                \ 'stdin': 1,
                \ }
    let g:neoformat_enabled_go = ['golines']
    let g:neoformat_enabled_python = ['black']
endif

if has_key(g:plugs, 'ale')
    let g:ale_linters = {'python': ['pylint', 'pycodestyle']}
endif
