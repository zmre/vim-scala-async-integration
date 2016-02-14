if exists('g:loaded_syntastic_scala_readsbtlogs_checker')
    finish
endif
let g:loaded_syntastic_scala_readsbtlogs_checker = 1

let s:save_cpo = &cpo
set cpo&vim

" function! SyntaxCheckers_scala_readsbtlogs_IsAvailable() dict
    " if !executable(self.getExec())
        " return 0
    " endif

    " let targetvimdir = expand("target/vim", 1)
    " call self.log('isdirectory(' . string(targetvimdir) . ') = 'isdirectory(targetvimdir))

    " return isdirectory(targetvimdir)
" endfunction

function! SyntaxCheckers_scala_readsbtlogs_GetLocList() dict
    let makeprg = self.makeprgBuild({
      \ 'args_after': 'target/vim/*' })

    let errorformat =
         \ '%W\ %#[error]\ %#%f:%l:%c:\ %#%m,' .
         \ '%E\ %#[error]\ %#%f:%l:\ %m,' .
         \ '%-Z\ %#[error]\ %p^,' .
         \ '%W\ %#[warn]\ %#%f:%l:\ %m,%-Z\ %#[warn]\ %p^,%-G\ %#[warn]\ %m,' .
         \ '%-G\ %#[error]\ %m,' .
         \ '%C\ %#%m'

    " column is off by 4 for scalastyle

    return SyntasticMake({'makeprg': makeprg, 'errorformat': errorformat })
endfunction


call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'scala',
    \ 'exec': 'cat',
    \ 'name': 'readsbtlogs'})

let &cpo = s:save_cpo
unlet s:save_cpo
