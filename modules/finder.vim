if has_key(g:plugs, 'nerdcommenter')
	" don't show the help in normal mode
	let g:Lf_HideHelp = 1
	let g:Lf_UseCache = 0
	let g:Lf_UseVersionControlTool = 0
	let g:Lf_IgnoreCurrentBufferName = 1

	" popup mode
	let g:Lf_WindowPosition = 'popup'
	let g:Lf_PreviewInPopup = 1
	let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
endif
