let g:quickui_border_style = 2
" let g:quickui_color_scheme = 'gruvbox'
" let g:quickui_color_scheme = 'papercol dark'
let g:quickui_color_scheme = 'papercol light'

function OpenGlobalMenu()
    let content = [
                \ ["Run this script", 'call RunScript()' ],
                \ ["&Ranger", 'Ranger'],
                \ ["&Vista", 'Vista'],
                \ ["&NERDTree", 'NERDTree'],
                \ ['-'],
                \ ["Git &diff", 'Gvdiffsplit' ],
                \ ["Git blame", 'Gblame' ],
                \ ["Git log", 'GlLog!' ],
                \ ['-'],
                \ ["Leaderf &file", 'Leaderf file' ],
                \ ["Leaderf &line", 'Leaderf line'],
                \ ["Leaderf &buffer", 'Leaderf buffer'],
                \ ["Leaderf r&g", 'Leaderf rg'],
                \ ]
    " set cursor to the last position
    " let opts = {'index':g:quickui#context#cursor}
    call quickui#context#open(content, {})
endfunction

nmap <C-h> :call OpenGlobalList()<CR>
nmap <C-s> :call OpenGlobalMenu()<CR>
