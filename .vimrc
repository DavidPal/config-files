" Don't try to be vi compatible
set nocompatible

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Do not wrap lines
set nowrap

" Show file stats
set ruler

" Always show status bar
set laststatus=2

" Custom status bar
set statusline=%([File:\ %F]%)\ %m\ %r                         " Path to the file
set statusline+=\ [%p%%]                                       " Percentage
set statusline+=\ %([Line:\ %l/%L]%)                           " Current line number and total number of lines
set statusline+=\ %([Column:\ %c%V]%)                          " Current column and virtual column
set statusline+=\ %([Byte:\ %o/%{line2byte(line('$')+1)-1}]%)  " Current byte and total number of bytes
set statusline+=\ [%{&fileencoding}]                           " File encoding
set statusline+=\ [%{&fileformat}]                             " Line endings format
set statusline+=\ %y                                           " File type

" Searching
set hlsearch
set incsearch
set smartcase
set showmatch

" Highlight trailing whitespace at the end of the lines
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
