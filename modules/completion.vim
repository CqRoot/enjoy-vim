if has_key(g:plugs, 'asyncomplete.vim')
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

    if has_key(g:plugs, 'asyncomplete-file.vim')
        au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
                    \ 'name': 'file',
                    \ 'allowlist': ['*'],
                    \ 'priority': 10,
                    \ 'completor': function('asyncomplete#sources#file#completor')
                    \ }))
    endif

    if has_key(g:plugs, 'vim-lsp') && has_key(g:plugs, 'asyncomplete-lsp.vim')

        if executable('gopls')
            au User lsp_setup call lsp#register_server({
                        \ 'name': 'gopls',
                        \ 'cmd': {server_info->['gopls']},
                        \ 'whitelist': ['go'],
                        \ })
            autocmd BufWritePre *.go LspDocumentFormatSync
        endif

    endif
endif
