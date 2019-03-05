if has("autocmd")
    " Enable file type detection
  filetype on
    " vim
  autocmd FileType vim setlocal tabstop=2 softtabstop=2 shiftwidth=2
    " Syntax of these languages is fussy over tabs vs spaces
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2
    " C
  autocmd FileType c set foldmethod=marker shiftwidth=4 noexpandtab softtabstop=4
  autocmd FileType c let &comments = 'sO:* -,mO:*  ,exO:*/,s0:/*,mb:**,ex:*/,://' " C comment style enforced by the 42 school
    " github issues
  autocmd BufNewFile,BufRead ISSUE_EDITMSG setlocal filetype=markdown
    " LaTeX
  autocmd Filetype tex,latex set grepprg=grep\ -nH\ $
  autocmd Filetype tex,latex let g:tex_flavor = "latex"
    " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
    " Treat document formats as zip files
    " TODO: this doesn't really work
  " au BufReadCmd *.docx,*.xlsx,*.pptx call zip#Browse(expand(""))
  " au BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand(""))
endif

" vim600: set foldmethod=marker foldlevel=0 expandtab tabstop=2:
