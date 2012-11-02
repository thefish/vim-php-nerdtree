"--------------------------------------------------
" Character encoding
set termencoding=utf-8        
set encoding=utf-8            
set fileencodings^=utf-8      
"set termencoding=iso-8859-2    
"set encoding=iso-8859-2      
"set fileencodings^=iso-8859-2

"--------------------------------------------------
" Base settings
set nocompatible          " We're running Vim, not Vi!
syntax on                 " syntax highlingt
set autoindent            " automatical code indent
set cindent
set smartindent
set backspace=2           " backspace del all
set history=50            " history of commands
set hlsearch              " highlignt search fraze
filetype plugin on        " file type based syntax highliht
filetype indent on
set ts=4                  " tab stop
set sw=4                  " shift width (with autoindent)
set textwidth=2048        " text witdth
set nu                    " show numbers
set lcs=tab:>.,eol:$      " show non printed chars
set whichwrap+=<,>,[,]    " where wrap long lines
set gdefault              " /g default on s///
set showcmd               " show typed commands
set wildmenu              " show menu (bash-like) on tab
set wildignore=*.o,*~     " ignor on wildmenu
set incsearch             " show what is typed on /
set statusline=%<%f\ (%{&encoding})\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2          " always show status line
set viminfo='1000,f1,:1000,/1000  " big viminfo :)
set history=500
set lazyredraw
set wmh=0
set t_Co=256              " color numbers
set nowrap                " do not wrap lines

"-------------------------------------------------
" ESC-c ... capitalize current word (and goto next word)
map <esc>c viwu~W
" ESC-l ... lowercase current word (and goto next word)
map <esc>l viwuW
" ESC-u ... UPPERCASE current word (and goto next word)
map <esc>u viwUW

"--------------------------------------------------
" Word completion on <TAB>
function! InsertTabWrapper(direction)
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  elseif "backward" == a:direction
    return "\<c-p>"
  else
    return "\<c-n>"
  endif
endfunction
inoremap <Tab> <C-R>=InsertTabWrapper("backward")<CR>
inoremap <S-Tab> <C-R>=InsertTabWrapper("forward")<CR>

"--------------------------------------------------
" Duplicate line
map! <c-d> <esc>yypi
map <c-d> <esc>yyp

"--------------------------------------------------
" File tree on F7
map <silent> <F7> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode='<CR>'

"--------------------------------------------------
" NERDTree settings
"--------------------------------------------------
let NERDTreeShowHidden=1 " Show hidden files (.htaccess)

"--------------------------------------------------
" Change encoding
map _u :set encoding=utf-8<cr>:set fileencodings^=utf-8<cr>:set termencoding=utf-8<cr>
map _i :set encoding=iso-8859-2<cr>:set fileencodings^=iso-8859-2<cr>:set termencoding=iso-8859-2<cr>

"--------------------------------------------------
" Non indend paste: <F11><S-Ins><F11>
set pastetoggle=<F11>

"--------------------------------------------------
" Open in last edit place
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"--------------------------------------------------
" Syntax coloring (~/.vim/colors/)
" available colors: `ls /usr/share/vim/vim??/colors`
"colorscheme beauty256
colorscheme ir_black2

"---------------------------------------------------
" Tags file (use ctags)
let Tlist_Use_Right_Window = 1    " tags list on right window
:set tags=.vimtags;                 " NOTE SEMICOLON - it makes vim to search for .vimtags up a directory until it finds them
map <silent> <F8> :Tlist<CR>

"---------------------------------------------------
" Tab size
:set tabstop=4        " Force tabs to be displayed/expanded to 2 spaces (instead of default 8).
:set softtabstop=4    " Make Vim treat <Tab> key as 2 spaces, but respect hard Tabs.
                      " I don't think this one will do what you want.
:set expandtab        " Turn Tab keypresses into spaces.  Sounds like this is happening to you.
                      " You can still insert real Tabs as [Ctrl]-V [Tab].
:set shiftwidth=4     " When auto-indenting, indent by this much.
                      " (Use spaces/tabs per "expandtab".)
:retab                " Change all the existing tab characters to match the current tab settings
 "Change working dir to the edited file
:autocmd BufEnter * cd %:p:h 
" ctrl+shift+arrows to switch tabs
" map <C-S-Left> :tabprevious<CR>
" nmap <C-S-Left> :tabprevious<CR>
" imap <C-S-Left> <Esc>:tabprevious<CR>i


" -----------------------------------------------------
"  Ctrl+Z Undo
" -----------------------------------------------------
map <C-Z> u<CR>
imap <C-Z> <Esc>u<CR>i

" -----------------------------------------------------
"  F2 to save file
" -----------------------------------------------------
map <F2> :w<CR>
imap <F2> <Esc>:w<CR>i

" -----------------------------------------------------
" JJ to escape 
" -----------------------------------------------------
inoremap jj <Esc>

" -----------------------------------------------------
"  Indexer setup
"  ----------------------------------------------------
" let g:Indexer_ctagsCommandLineOptions=""
let g:indexer_tagsDirname = $HOME."/.vim/tags"
let g:indexr_LookForProjectDir = 0 
let g:indexer_ctagsCommandLineOptions="-h '.php' --exclude='\.git' --totals=yes --tag-relative=yes --PHP-kinds=+cf --regex-PHP='/abstract class ([^ ]*)/\1/c/' --regex-PHP='/interface ([^ ]*)/\1/c/' --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'"
let g:indexer_ctagsDontSpecifyFilesIfPossible = 1
let g:indexer_disableCtagsWarning = 1

" -------------------------------------------------------
"  Bind Ctrl + B to syntax check
"  ------------------------------------------------------
":autocmd FileType php noremap <C-B> :!php -l %<CR>
":autocmd FileType php noremap <C-L> :!$HOME/bin/php -l %<CR>

" -------------------------------------------------------
"  Syntastic
" -------------------------------------------------------
let g:syntastic_enable_signs=1 "Пдосветка строк с ашипкой
let g:syntastic_auto_loc_list=1 "Показываем места с ашипками
"let g:syntastic_quiet_warnings=1 "Аккуратно кажем вариниги и нотисы 
":SyntasticEnable php "checking php
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"  ------------------------------------------------------
"  MRU - List of recent edited files mapped to F10
"  ------------------------------------------------------
map <F10> :MRU<CR>
imap <F10> :MRU<CR>

"  ------------------------------------------------------
"  snipMate helper - allow html snippets in php
"  makes VIM think thats its php and html simulatenously
"  ------------------------------------------------------
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html
"  same for *.tpl files
au BufRead *.tpl set ft=php.html
au BufNewFile *.tpl set ft=php.html

"  ------------------------------------------------------
"  Using the system clipboard with ctrl+y and ctrl+p
"  ------------------------------------------------------
vmap <C-y> :<Esc>`>a<CR><Esc>mx`<i<CR><Esc>my'xk$v'y!xclip -selection c<CR>u
map <C-p> :set paste<CR>i<CR><CR><Esc>k:.!xclip -o<CR>JxkJx:set nopaste<CR>

"  ------------------------------------------------------
"  Swank/Slime ond other Lisp features
"  ------------------------------------------------------
"let g:slimv_swank_cmd = '! xterm -e clisp --load /usr/share/common-lisp/source/slime/start-swank.lisp &'
"    '! xterm -e sbcl --load /usr/share/common-lisp/source/slime/start-swank.lisp &'


"  ------------------------------------------------------
"  Solarized color theme
"  ------------------------------------------------------
call togglebg#map("<F5>")
let g:solarized_termcolors=256


"  ------------------------------------------------------
"  Used to edit syntax highlighting
"  ------------------------------------------------------
" adds to statusline
" set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}

" " a little more informative version of the above
" nmap Q :call <SID>SynStack()<CR>

" function! <SID>SynStack()
"     if !exists("*synstack")
"         return
"     endif
"     echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc


"  ------------------------------------------------------
"  Disable fucking paredit mode (Slimv)
"  ------------------------------------------------------
let g:paredit_mode=0
