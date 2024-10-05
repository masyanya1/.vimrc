filetype plugin indent on

" частичная руссификация

" Работа с вводом (INSERT) без переключения раскладки
noremap ш i
noremap Ш I
noremap ф a
noremap Ф A
noremap щ o
noremap Щ O
" Работа с заменой (REPLACE) без переключения раскладки
noremap к r
noremap К R
" Работа с режимом выделения (VISUAL) без переключения раскладки
noremap м v
noremap М V
" Работа с поиском:
" следующее и предыдущее совпадение без переключения раскладки
noremap т n
noremap Т N
" Копировать, удалить и вставить без переключения раскладки
noremap н y
noremap Н Y
noremap в d
noremap В D
noremap ч x
noremap Ч X
noremap з p
noremap З P
" Перемещения к началу/концу слов без переключения раскладки
noremap ц w
noremap Ц W
noremap у e
noremap У E
noremap и b
noremap И B
" Некоторые прочие русские буквы
noremap й q
noremap Й Q
noremap с c
noremap С C
noremap п g
noremap П G

" Передвижение на русские буквы
noremap р h
noremap о j
noremap л k
noremap д l

" табуляцая
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set wrap
set linebreak

set smartindent

" отключаем полностью мышь
set mouse=a

" отодвигаем край экрана на 15 строк
set scrolloff=15

set number

set cursorline

set incsearch
set nohlsearch

" настройка буфера
if has('unnamedplus')
    set clipboard=unnamedplus
endif

" Автообновление, при изменении файла извне
set updatetime=2000
set autoread
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * checktime

" ускорить вывод символов
set ttyfast

set nobackup
set nowb
set noswapfile

set encoding=utf8

set ffs=unix,dos,mac

set t_Co=256

if !has('gui_running')
    set t_Co=256
endif

syntax enable

colorscheme zellner

" изменяем цвет комментариев
highlight Comment ctermfg=grey

" переключение проверки орфографии
set spelllang=ru,en
map <C-s> :set spell! <CR>

" функция перехода по ссылкам на другие файлы
function! EnterToNextFile()
    let l:line= getline(".")

    let c = 0
    for i in line
        if i == '[' && line[c+1] == '['
                echo line
        endif
        let c += 1
    endfor
endfunction

command! EnterToNextFile call EnterToNextFile()
