" File:        statuline.vim
" Description: A delightful clean statusline for vim

if (exists("g:loaded_statusline_vim") && g:loaded_statusline_vim) || &cp
    finish
endif
let g:loaded_statusline_vim = 1

set statusline=
set statusline+=%f%m\                                   " File name[modified flag]
set statusline+=%=                                      " Empty block 
set statusline+=%r\                                     " Indent right 
set statusline+=%{strlen(&ft)?&ft:'none'}               " File type
set statusline+=%0*\ %{''.(&fenc!=''?&fenc:&enc).''}    " Encoding
set statusline+=%0*\ %{&ff}\                            " File format (dos/unix..) 
set statusline+=%0(%v%)\                                " column
set statusline+=%l\ %L                                  " position
