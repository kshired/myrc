set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8
set clipboard=unnamed
call vundle#begin()
" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'scrooloose/nerdtree'
	Plugin 'Raimondi/delimitMate'
	Plugin 'tpope/vim-sensible'
	Plugin 'vim-airline/vim-airline'
	Plugin 'AutoComplPop'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'terryma/vim-smooth-scroll'
	Plugin 'Syntastic'
	Plugin 'terryma/vim-multiple-cursors'
call vundle#end()            " required
filetype plugin indent on    " required


let g:neocomplcache_enable_at_startup = 1

 
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
 
let g:syntastic_cpp_compiler = 'g++-7'
let g:syntastic_c_compiler = 'gcc-7'
let g:syntastic_cpp_compiler_options = "-std=c++14 -Wall -Wextra -Wpedantic"
let g:syntastic_c_compiler_options = "-std=c99 -Wall -Wextra -Wpedantic"


" vim-multiple-cursor
let g:multi_cursor_use_default_mapping=0
" " Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"" vim-smooth-scroll
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 10, 5)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 10, 5)<CR>
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 10, 3)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 10, 3)<CR>"

"delimitMate"
let delimitMate_expand_cr=1


" NERD Commenter
 " Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1
 " Use compact syntax for prettified multi-line comments
 let g:NERDCompactSexyComs = 1
 " Align line-wise comment delimiters flush left instead of following codeindentation
 let g:NERDDefaultAlign = 'left'
 "et a language to use its alternate delimiters by default
 let g:NERDAltDelims_java = 1
 " Add your own custom formats or override the defaults
 let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
 " Allow commenting and inverting empty lines (useful when commenting a region)
 let g:NERDCommentEmptyLines = 1
 " Enable trimming of trailing whitespace when uncommenting
 let g:NERDTrimTrailingWhitespace = 1
 " customize keymapping
 map <Leader>cc <plug>NERDComToggleComment
 map <Leader>c<space> <plug>NERDComComment





map <F4> :w <CR> :!gcc-7 -std=c99 -g -fsanitize=address -Wall -Wextra -Wpedantic % -lm -o %:r && echo "---------------------------" && echo "Gcc"&& echo "Compiled Successfully" && echo "---------------------------" && ./%:r <CR>

map <F5> :w <CR> :!g++-7 -std=c++14 -g -fsanitize=address -Wall -Wextra -Wpedantic % -lm -o %:r && echo "---------------------------" && echo "Compiled Successfully" && echo "---------------------------" && ./%:r <CR>


map <F3> :NERDTreeToggle<cr>
map! <C-TAB> <S-CR><ESC>i<BACKSPACE>



" 자동 문법 강조 "
syntax on 
set nocompatible         " Vim 디폴트 기능들을 사용함 "
set number                " 줄 번호를 붙임  "
set backspace=2         " 삽입 모드에서 백스페이스를 계속 허용 "
set autoindent             " 자동 들여쓰기 "
set cindent             " C 언어 자동 들여쓰기 "
set smartindent         " 역시 자동 들여쓰기 "
""set nowrap                 " 자동 줄바꿈 안함  "
set nowrapscan             " 찾기에서 파일의 맨 끝에 이르면 계속하여 찾지 않음 "
set ignorecase             " 찾기에서 대/소문자를 구별하지 않음 "
set incsearch             " 점진적으로 찾기  "
set nobackup             " 백업파일을 만들지 않음 "
set nojoinspaces         " J 명령어로 줄을 붙일 때 마침표 뒤에 한칸만 띔 "
set ruler                 " 상태표시줄에 커서 위치를 보여줌 "
set tabstop=4             " 간격 "
set shiftwidth=4         " 자동 들여쓰기 간격 "
set keywordprg=ydic        " K를 눌렀을 때 실행할 명령어 "
set showcmd             " (부분적인)명령어를 상태라인에 보여줌 "
set showmatch             " 매치되는 괄호의 반대쪽을 보여줌 "
set autowrite             " :next나  :make 같은 명령를 입력하면 자동으로 저장 "
set linespace=3         " 줄간격 "
set title                 " 타이틀바에 현재 편집중인 파일을 표시 "
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\     " 다중 문서 작업을 위한 Status 줄 
set mouse=a
set hlsearch
