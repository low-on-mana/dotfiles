let g:ale_erlang_erlc_options = '-I '.getcwd().'/src'
nnoremap <F10> :ErlangTags <CR>
inoremap <F10> <Esc>:ErlangTags <CR>
