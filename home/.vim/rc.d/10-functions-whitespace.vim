  " remove whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation. save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
    " Do the business:
  %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

  " call formatter function when we hit a key
nnoremap <buffer> <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" vim600: set foldmethod=marker foldlevel=0 expandtab tabstop=2:
