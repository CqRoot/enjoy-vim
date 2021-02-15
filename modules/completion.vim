if index(g:plugs_order, 'asyncomplete.vim') >= 0
    inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
    inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

    if index(g:plugs_order, 'asyncomplete-file.vim') >= 0
        au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
                    \ 'name': 'file',
                    \ 'allowlist': ['*'],
                    \ 'priority': 10,
                    \ 'completor': function('asyncomplete#sources#file#completor')
                    \ }))
    endif

    if index(g:plugs_order, 'vim-lsp') >= 0 && index(g:plugs_order, 'asyncomplete-lsp.vim') >= 0

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
