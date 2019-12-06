nnoremap <Leader>e ^ywithis.<Esc>A = this.<Esc>pa.bind(this)<Esc>
nnoremap <C-]> :TernDef<CR>
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d' "Background server for eslint
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
