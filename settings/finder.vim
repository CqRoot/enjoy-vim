" nmap <leader>g :Leaderf rg<CR>
" nmap <leader>t :Leaderf tag<CR>
" nmap <leader>l :Leaderf line<CR>

let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_ShortcutB = "<leader>fb"
nmap <leader>fr :Leaderf rg<CR>
nmap <leader>ft :LeaderfTag<CR>
nmap <leader>fl :LeaderfLine<CR>

let g:Lf_RgConfig = [
            \ "--ignore-file='".expand('<sfile>:p:h')."/rgignore'"
            \ ]
