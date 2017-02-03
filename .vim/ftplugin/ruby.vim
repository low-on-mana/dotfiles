inoremap <F9> <Esc>:!rspec %<CR>
nnoremap <F9> :!rspec %<CR>
nnoremap <F10> :!ctags -R --languages=ruby --exclude=.git --exclude=log <CR>
nnoremap <F11> :!ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)<CR>
" let g:rspec_command = "!theine rspec {spec}"
let g:rspec_command = "Dispatch! rspec {spec}"
"
" RSpec.vim mappings
nnoremap <Leader>t :w <CR> :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :w <CR> :call RunNearestSpec()<CR>
nnoremap <Leader>l :w <CR> :call RunLastSpec()<CR>
nnoremap <Leader>a :w <CR> :call RunAllSpecs()<CR>
nnoremap <Leader>e ^ilet(:<Esc>ea)<Esc>wxxi{ <Esc>$a }<Esc><CR>
