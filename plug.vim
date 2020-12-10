call plug#begin(expand('<sfile>:p:h').'/plugged')

" Colorscheme {
    Plug 'dracula/vim'
    Plug 'morhetz/gruvbox'
    Plug 'joshdick/onedark.vim'
" }

" Finder {
    Plug 'Yggdroot/LeaderF'
" }

" Sidebar {
    Plug 'preservim/nerdtree', { 'on': 'NERDTree' }
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'liuchengxu/vista.vim'
    Plug 'preservim/tagbar'
" }

" Completion {
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'

    Plug 'ncm2/ncm2-bufword'
    Plug 'ncm2/ncm2-path'
    Plug 'ncm2/ncm2-jedi'
    Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
    Plug 'ncm2/ncm2-go'

    Plug 'ncm2/ncm2-ultisnips'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
" }

" Git {
    Plug 'tpope/vim-fugitive'
    if has('nvim') || has('patch-8.0.902')
        Plug 'mhinz/vim-signify'
    else
        Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    endif
" }

" Linter {
    Plug 'dense-analysis/ale'
    let g:ale_linters = {'python': ['pylint', 'pycodestyle']}
" }

" Other {
    Plug 'vim-airline/vim-airline'
    Plug 'preservim/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'ryanoasis/vim-devicons'
    Plug 'sheerun/vim-polyglot'

    Plug 'rbgrouleff/bclose.vim'
    Plug 'francoiscabrol/ranger.vim'
    let g:ranger_map_keys = 0
    nmap <leader>g :Ranger<CR>

    Plug 'voldikss/vim-translator'
    nmap <silent> <Leader>w <Plug>TranslateW
    vmap <silent> <Leader>w <Plug>TranslateWV

    Plug 'skywind3000/vim-quickui'

    Plug 'ludovicchabant/vim-gutentags'
" }

call plug#end()
