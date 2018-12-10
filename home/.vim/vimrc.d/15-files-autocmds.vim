if has("autocmd")
    " Enable file type detection
  filetype on
    " bash vi-mode
  autocmd BufRead,BufNewFile /tmp/bash-fc-* set filetype=sh
    " vim
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
    " Syntax of these languages is fussy over tabs vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2
    " shell
  autocmd FileType sh set shiftwidth=2 softtabstop=4
    " python
  autocmd FileType python let python_highlight_all = 1
  autocmd FileType python let python_slow_sync = 1
  autocmd FileType python set expandtab shiftwidth=4 softtabstop=4
  autocmd FileType python set completeopt=preview
  autocmd FileType c set foldmethod=marker shiftwidth=4 noexpandtab softtabstop=4
    " C comment style enforced by the 42 school
  autocmd FileType c let &comments = 'sO:* -,mO:*  ,exO:*/,s0:/*,mb:**,ex:*/,://'
    " archlinux package build
  autocmd FileType PKGBUILD set shiftwidth=2 softtabstop=4
    " LaTeX
  autocmd Filetype tex,latex set grepprg=grep\ -nH\ $
  autocmd Filetype tex,latex let g:tex_flavor = "latex"
    " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2
  autocmd FileType css setlocal ts=2 sts=2 sw=2
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
  autocmd FileType mail setlocal textwidth=79 spell
    " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
    " Terraform
  " autocmd FileType terraform
    " Treat document formats as zip files
    " TODO: this doesn't really work
  " au BufReadCmd *.docx,*.xlsx,*.pptx call zip#Browse(expand(""))
  " au BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand(""))
endif

" vim600: set foldmethod=marker foldlevel=0 expandtab tabstop=2:
