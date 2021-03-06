
" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" tab settings 
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4

set number " turn on line numbers

" highlight characters over column 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" NERDTree
autocmd VimEnter * NERDTree
let NERDTreeIgnore = ['\.pyc$']

" highlight all occurances of current word
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" LISP specific indentation
autocmd FileType lisp set tabstop=2 | set shiftwidth=2

" Turn on syntax highlighting for clojure
autocmd BufNewFile,BufRead *.clj setf clojure | set tabstop=2 | set shiftwidth=2
