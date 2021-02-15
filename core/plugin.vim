call plug#begin(expand('<sfile>:p:h:h').'/plugged')

" Colorscheme {
    Plug 'joshdick/onedark.vim'
    Plug 'dracula/vim'
    Plug 'morhetz/gruvbox'
    Plug 'kristijanhusak/vim-hybrid-material'
" }

" Finder {
    " Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
    Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
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
" }

" Completion - asyncomplete {
    Plug 'prabirshrestha/asyncomplete.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'prabirshrestha/asyncomplete-lsp.vim'

    Plug 'prabirshrestha/asyncomplete-file.vim'
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
