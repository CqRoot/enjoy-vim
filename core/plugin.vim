call plug#begin(expand('<sfile>:p:h:h').'/plugged')

" Colorscheme {
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim'
    Plug 'morhetz/gruvbox'
    Plug 'kristijanhusak/vim-hybrid-material'
" }

" Finder {
    if has('python3')
        Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
    endif
" }

" Sidebar {
     Plug 'liuchengxu/vista.vim'
" }

" File Manager {
    if has('nvim')
        Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/defx.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
" }

" Editor {
    Plug 'preservim/nerdcommenter'
    Plug 'Yggdroot/indentLine'
    Plug 'sheerun/vim-polyglot'
    Plug 'sbdchd/neoformat'
    Plug 'psliwka/vim-smoothie'
    Plug 'dense-analysis/ale'
    Plug 'gcmt/wildfire.vim'
" }

" Completion {
    if has('python3')
        " ncm2
        Plug 'ncm2/ncm2'
        Plug 'roxma/nvim-yarp'

        Plug 'prabirshrestha/async.vim'
        Plug 'ncm2/ncm2-vim-lsp'
        Plug 'ncm2/ncm2-ultisnips'

        Plug 'ncm2/ncm2-bufword'
        Plug 'ncm2/ncm2-path'

        Plug 'ncm2/ncm2-jedi'
    else
        " asyncomplete
        Plug 'prabirshrestha/asyncomplete.vim'
        Plug 'prabirshrestha/asyncomplete-lsp.vim'

        Plug 'prabirshrestha/asyncomplete-file.vim'
    endif

    " Common
    Plug 'prabirshrestha/vim-lsp'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
" }
" Completion - ncm2 {
" }

" Git {
    Plug 'tpope/vim-fugitive'
    if has('nvim') || has('patch-8.0.902')
        Plug 'mhinz/vim-signify'
    else
        Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
    endif
" }

" Other {
    " Plug 'voldikss/vim-translator'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'thinca/vim-quickrun'
" }

call plug#end()
