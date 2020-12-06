" 使用Ctrl+/来注释内容
nmap <C-_> <plug>NERDCommenterToggle
xmap <C-_> <plug>NERDCommenterToggle

" 注释分隔符左对齐，而不是按行缩进
let g:NERDDefaultAlign = 'left'

" 在注释分隔符后添加空格
let g:NERDSpaceDelims = 1

let g:NERDCustomDelimiters = {
            \ 'python': { 'left': '#' }
            \ }

" 在Toggle时检查所有选择行
let g:NERDToggleCheckAllLines = 1
