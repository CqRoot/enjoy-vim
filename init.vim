if has('unix')
    let g:python_host_skip_check=1
    let g:python_host_prog = '/usr/bin/python2'
    let g:python3_host_skip_check=1
    let g:python3_host_prog = '/usr/bin/python3'
endif

exec 'source '.expand('<sfile>:p:h').'/base.vim'
exec 'source '.expand('<sfile>:p:h').'/keymap.vim'
exec 'source '.expand('<sfile>:p:h').'/plug.vim'

for s:setting_script in globpath(expand('<sfile>:p:h').'/settings/', '*.vim', 0, 1)
    exec 'source '.s:setting_script
endfor

silent! colorscheme gruvbox
