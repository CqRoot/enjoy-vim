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
endif

if has_key(g:plugs, 'ncm2')
	" enable ncm2 for all buffers
	autocmd BufEnter * call ncm2#enable_for_buffer()

	" enable ncm2 for all buffers
	autocmd BufEnter * call ncm2#enable_for_buffer()

	" IMPORTANT: :help Ncm2PopupOpen for more information
	set completeopt=noinsert,menuone,noselect

	" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
	inoremap <C-c> <ESC>

	" When the <Enter> key is pressed while the popup menu is visible, it only
	" hides the menu. Use this mapping to close the menu and also start a new
	" line.
	" inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")

	" Use <TAB> to select the popup menu:
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

	let g:ncm2_jedi#python_version=2

	" Press enter key to trigger snippet expansion
	" The parameters are the same as `:help feedkeys()`
	inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')

	" c-j c-k for moving in snippet
	let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
	let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
	let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"
	let g:UltiSnipsRemoveSelectModeMappings = 0

	if has_key(g:plugs, 'ncm2-jedi')
		let g:ncm2_jedi#python_version = 2
	endif
endif

if has_key(g:plugs, 'vim-lsp')
	if executable('gopls')
		au User lsp_setup call lsp#register_server({
					\ 'name': 'gopls',
					\ 'cmd': {server_info->['gopls']},
					\ 'whitelist': ['go'],
					\ })
		autocmd BufWritePre *.go LspDocumentFormatSync
	endif
	if executable('vls')
		augroup LspVls
			au!
			autocmd User lsp_setup call lsp#register_server({
						\ 'name': 'vue-language-server',
						\ 'cmd': {server_info->['vls']},
						\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
						\ 'whitelist': ['vue'],
						\ 'initialization_options': {
						\         'config': {
						\             'html': {},
						\              'vetur': {
						\                  'validation': {}
						\              }
						\         }
						\     }
						\ })
		augroup END
	endif
	if executable('html-languageserver')
		au User lsp_setup call lsp#register_server({
					\ 'name': 'html-languageserver',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'html-languageserver --stdio']},
					\ 'whitelist': ['html'],
					\ })
	endif
	if executable('css-languageserver')
		au User lsp_setup call lsp#register_server({
					\ 'name': 'css-languageserver',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
					\ 'whitelist': ['css', 'less', 'sass'],
					\ })
	endif
	if executable('typescript-language-server')
		au User lsp_setup call lsp#register_server({
					\ 'name': 'js typescript-language-server',
					\ 'cmd': { server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
					\ 'root_uri': { server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_directory(lsp#utils#get_buffer_path(), '.git/..'))},
					\ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact']
					\ })
		au User lsp_setup call lsp#register_server({
					\ 'name': 'typescript-language-server',
					\ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
					\ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'tsconfig.json'))},
					\ 'whitelist': ['typescript', 'typescript.tsx'],
					\ })
	endif
	if executable('vim-language-server')
		augroup LspVim
			autocmd!
			autocmd User lsp_setup call lsp#register_server({
						\ 'name': 'vim-language-server',
						\ 'cmd': {server_info->['vim-language-server', '--stdio']},
						\ 'whitelist': ['vim'],
						\ 'initialization_options': {
						\   'vimruntime': $VIMRUNTIME,
						\   'runtimepath': &rtp,
						\ }})
		augroup END
	endif
	if executable('bash-language-server')
		augroup LspBash
			autocmd!
			autocmd User lsp_setup call lsp#register_server({
						\ 'name': 'bash-language-server',
						\ 'cmd': {server_info->[&shell, &shellcmdflag, 'bash-language-server start']},
						\ 'allowlist': ['sh'],
						\ })
		augroup END
	endif
endif
