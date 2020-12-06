" 文件类型检查，载入缩进规则
filetype plugin indent on
" 不与vi兼容
set nocompatible
" 不自动切换工作目录
set noautochdir

" Search
" 搜索结果高亮
set hlsearch
" 搜索时动态跟随
set incsearch
" 搜索时忽略大小写
set ignorecase

" file
" 文件外部更改时自动读取
set autoread

" backup
" 不创建备份文件（~）
set nobackup
" 不创建交换文件（.swp）
set noswapfile
" 不创建写入备份文件
set nowritebackup
" 不创建撤销历史文件
set noundofile

" error
" 出错时不发出响声
set noerrorbells
" 出错时没有视觉提示
set novisualbell

" conceal
set concealcursor="nvic"
set conceallevel=2

" Syntax
syntax enable
syntax on

" scroll
" 垂直滚动时，光标距离底部的位置
set scrolloff=3
" 自动折行
set wrap

" 不支持使用鼠标（这样在终端下可以更方便地复制）
set mouse=""
" 可以用backspace删除
set backspace=2

" 高亮匹配括号
set showmatch

" tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 用空格替代制表符
set expandtab
set smarttab

" 前端缩进为2
autocmd FIletype html,javascript,vue setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab

" indent
set smartindent
set autoindent

" encoding
set encoding=utf-8

set fileformats=unix,dos

" status bar
" 底部显示当前行列数
set ruler
" 底部显示模式
set showmode
" 底部显示输入的命令
set showcmd

" 显示列限制线
set colorcolumn=80

set list
set listchars=tab:›\ ,trail:■,extends:#,nbsp:.

" Wildmenu
set wildmenu
" 输入命令时按Tab显示候选列表，再按一次选择
set wildmode=longest:full,full

" number
" 行号
set number!
" 相对行号
" set relativenumber

" 高亮当前行
set cursorline
" 高亮当前列，开启会使光标移动卡顿
" set cursorcolumn
