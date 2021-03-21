if has_key(g:plugs, 'defx.nvim')
    " auto close if it is the last
    autocmd BufEnter * if (&buftype ==# 'defx' || &buftype ==# 'nofile')
                \ && (!has('vim_starting'))
                \ && winbufnr(2) == -1 | quit! | endif

    call defx#custom#option('_', {
                \ 'columns': 'indent:icons:filename:type',
                \ 'winwidth': 30,
                \ 'split': 'vertical',
                \ 'direction': 'topleft',
                \ 'show_ignored_files': 0,
                \ 'buffer_name': '',
                \ 'toggle': 1,
                \ 'resume': 1,
                \ 'ignored_files':
                \   '*.pyc, .git'
                \ })

    autocmd FileType defx call s:defx_mappings()

    function! s:defx_toggle_tree_or_open_file() abort
        if defx#is_directory()
            return defx#do_action('open_or_close_tree')
        else
            return defx#do_action('drop')
        endif
    endfunction

    function! s:defx_cd_or_open_file() abort
        if defx#is_directory()
            return defx#do_action('open_directory')
        else
            return defx#do_action('drop')
        endif
    endfunction

    function! s:defx_mappings() abort
        " Define mappings
        nnoremap <silent><buffer><expr> <2-LeftMouse> <sid>defx_toggle_tree_or_open_file()
        nnoremap <silent><buffer><expr> h             defx#do_action('open_tree')
        nnoremap <silent><buffer><expr> l             <sid>defx_toggle_tree_or_open_file()
        nnoremap <silent><buffer><expr> <CR>          <sid>defx_cd_or_open_file()

        nnoremap <silent><buffer><expr> c       defx#do_action('copy')
        nnoremap <silent><buffer><expr> m       defx#do_action('move')
        nnoremap <silent><buffer><expr> p       defx#do_action('paste')
        nnoremap <silent><buffer><expr> E       defx#do_action('open', 'vsplit')
        nnoremap <silent><buffer><expr> P       defx#do_action('preview')
        nnoremap <silent><buffer><expr> o       defx#do_action('open_tree', 'toggle')
        nnoremap <silent><buffer><expr> K       defx#do_action('new_directory')
        nnoremap <silent><buffer><expr> N       defx#do_action('new_file')
        nnoremap <silent><buffer><expr> M       defx#do_action('new_multiple_files')
        nnoremap <silent><buffer><expr> C       defx#do_action('toggle_columns', 'mark:indent:icon:filename:type:size:time')
        nnoremap <silent><buffer><expr> S       defx#do_action('toggle_sort', 'time')
        nnoremap <silent><buffer><expr> d       defx#do_action('remove')
        nnoremap <silent><buffer><expr> r       defx#do_action('rename')
        nnoremap <silent><buffer><expr> !       defx#do_action('execute_command')
        nnoremap <silent><buffer><expr> x       defx#do_action('execute_system')
        nnoremap <silent><buffer><expr> yy      defx#do_action('yank_path')
        nnoremap <silent><buffer><expr> .       defx#do_action('toggle_ignored_files')
        nnoremap <silent><buffer><expr> ;       defx#do_action('repeat')
        nnoremap <silent><buffer><expr> <BS>    defx#do_action('cd', ['..'])
        nnoremap <silent><buffer><expr> ~       defx#do_action('cd')
        nnoremap <silent><buffer><expr> q       defx#do_action('quit')
        nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
        nnoremap <silent><buffer><expr> *       defx#do_action('toggle_select_all')
        nnoremap <silent><buffer><expr> j       line('.') == line('$') ? 'gg' : 'j'
        nnoremap <silent><buffer><expr> k       line('.') == 1 ? 'G' : 'k'
        nnoremap <silent><buffer><expr> <C-l>   defx#do_action('redraw')
        nnoremap <silent><buffer><expr> <C-g>   defx#do_action('print')
        nnoremap <silent><buffer><expr> cd      defx#do_action('change_vim_cwd')
    endfunction
endif
