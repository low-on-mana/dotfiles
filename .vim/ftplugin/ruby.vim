inoremap <F9> <Esc>:!rspec %<CR>
nnoremap <F9> :!rspec %<CR>
nnoremap <F10> :!ctags -R --languages=ruby --exclude=.git --exclude=log <CR>
nnoremap <F11> :!ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)<CR>
"
" RSpec.vim mappings
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>
nnoremap <Leader>lt ysW)ilet<Esc>lli:<Esc>f=xdiwi <Esc>wys${
