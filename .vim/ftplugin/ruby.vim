inoremap <F9> <Esc>:!rspec %<CR>
nnoremap <F9> :!rspec %<CR>
nnoremap <F11> :!ctags -R --languages=ruby --exclude=.git --exclude=log <CR>
nnoremap <F12> :!ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)<CR>
