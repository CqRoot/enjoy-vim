exec 'source '.expand('<sfile>:p:h').'/core/base.vim'
exec 'source '.expand('<sfile>:p:h').'/core/plugin.vim'
exec 'source '.expand('<sfile>:p:h').'/core/mapping.vim'

for s:module_script in globpath(expand('<sfile>:p:h').'/modules/', '*.vim', 0, 1)
    exec 'source '.s:module_script
endfor

silent! colorscheme onedark
