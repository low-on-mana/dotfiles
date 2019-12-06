" let g:syntastic_ruby_checkers = ['mri']
" let g:syntastic_ruby_mri_exec = "/Users/anoop/.rbenv/versions/2.3.1/bin/ruby"
"
"Used by vim-ruby and macvim's ruby.vim 
let g:ruby_path = "/Users/anoop/.rbenv/versions/2.3.1/bin/ruby"

let g:ale_ruby_ruby_executable = "/Users/anoop/.rbenv/versions/2.3.1/bin/ruby"

let g:rubycomplete_buffer_loading = 1 
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

inoremap <F9> <Esc>:!rspec %<CR>
nnoremap <F9> :!rspec %<CR>
nnoremap <F10> :!ctags -R --languages=ruby --exclude=.git --exclude=log <CR>
nnoremap <F11> :!ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)<CR>
" let g:rspec_command = "!theine rspec {spec}"
let g:rspec_command = ":ItermStartSplit bundle exec rspec {spec}"
" let g:rspec_command = ":ItermStartSplit theine rspec {spec}"
"
" RSpec.vim mappings
nnoremap <Leader>t :w <CR> :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :w <CR> :call RunNearestSpec()<CR>
nnoremap <Leader>l :w <CR> :call RunLastSpec()<CR>
nnoremap <Leader>a :w <CR> :call RunAllSpecs()<CR>
nnoremap <Leader>e ^ilet(:<Esc>ea)<Esc>wxxi{ <Esc>$a }<Esc><CR>
