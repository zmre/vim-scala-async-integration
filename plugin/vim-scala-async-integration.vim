let g:syntastic_enable_signs=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_scala_checkers=['readsbtlogs']
let g:syntastic_ignore_files = ['\m\c\.sbt$']

let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '☹'
let g:syntastic_style_warning_symbol = '⚑'

autocmd BufEnter *.scala             SyntasticCheck
