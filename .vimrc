 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " disable SSL check
 let $GIT_SSL_NO_VERIFY = 'true'

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
 " non github repos
" Bundle 'git://git.wincent.com/command-t.git'
 " ...

" fuzzyfinder replacement
Bundle 'git://github.com/kien/ctrlp.vim'
Bundle 'git://github.com/fisadev/vim-ctrlp-cmdpalette'

 Bundle 'git://github.com/scrooloose/nerdtree.git'  
 Bundle 'git://github.com/tpope/vim-surround.git'
 
 " SnipMate fork 
 Bundle "MarcWeber/vim-addon-mw-utils"
 Bundle "tomtom/tlib_vim"
" Bundle "honza/snipmate-snippets"
 Bundle 'git://github.com/garbas/vim-snipmate.git'

 Bundle 'git://github.com/vim-scripts/colorsupport.vim'

 Bundle 'vim-scripts/DfrankUtil'
 Bundle 'vim-scripts/vimprj'
 Bundle 'vim-scripts/indexer.tar.gz'

 Bundle 'git://github.com/scrooloose/syntastic.git'
 Bundle 'git://github.com/vim-scripts/slimv.vim.git'
 Bundle 'git://github.com/justthefish/vim-thefish-colors.git'
 
 
 Bundle 'git://github.com/vim-scripts/SuperTab.git'
 
 " VimShell
 Bundle 'https://github.com/Shougo/vimproc.git'
 Bundle 'https://github.com/Shougo/neocomplcache.git'
 Bundle 'https://github.com/Shougo/vimshell.git'
 " Ack
 "Bundle 'https://github.com/mileszs/ack.vim'
 Bundle 'https://github.com/tyok/ack.vim'
 " NERDTREE search with ack
 Bundle 'https://github.com/vsushkov/nerdtree-ack'
 " MRU
 Bundle 'https://github.com/vim-scripts/mru.vim'
 " Airline
 Bundle 'bling/vim-airline'


 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

" ==== OLD VIMRC ====

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

"  let col = col('.') - 1
""  if !col || getline('.')[col - 1] !~ '\k'
"  if !col || getline('.')[col - 1] !~ '\k'
"    return "\<tab>"
"  elseif "backward" == a:direction
"    return "\<c-p>"
""    return "\<c-x>\<c-o>"
"  else
"    return "\<c-n>"
"  endif
"endfunction
"inoremap <Tab> <C-R>=InsertTabWrapper("backward")<CR>
"inoremap <S-Tab> <C-R>=InsertTabWrapper("forward")<CR>

"--------------------------------------------------
" Duplicate line
map! <c-d> <esc>yypi
map <c-d> <esc>yyp

"--------------------------------------------------
" File tree on F7
map <silent> <F7> :NERDTreeToggle<CR>
" let NERDTreeMapActivateNode='<CR>'

"--------------------------------------------------
" NERDTree settings
"--------------------------------------------------
let NERDTreeShowHidden=1 " Show hidden files (.htaccess)
" set autochdir
let NERDTreeChDirMode=2 " always open in current dir

"--------------------------------------------------
" Change encoding
map _u :set encoding=utf-8<cr>:set fileencodings^=utf-8<cr>:set termencoding=utf-8<cr>
map _i :set encoding=iso-8859-2<cr>:set fileencodings^=iso-8859-2<cr>:set termencoding=iso-8859-2<cr>

"--------------------------------------------------
" Non indend paste: <F12><S-Ins><F12>
set pastetoggle=<F12>

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
":set tags=.vimtags;                 " NOTE SEMICOLON - it makes vim to search for .vimtags up a directory until it finds them
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
" let g:indexer_lookForProjectDir = 0 
let g:indexer_ctagsCommandLineOptions="-h '.php' --exclude='\.git' --totals=yes --tag-relative=yes --PHP-kinds=+cf --regex-PHP='/abstract class ([^ ]*)/\1/c/' --regex-PHP='/interface ([^ ]*)/\1/c/' --regex-PHP='/(public |static |abstract |protected |private )+function ([^ (]*)/\2/f/'"
let g:indexer_ctagsDontSpecifyFilesIfPossible = 1
let g:indexer_disableCtagsWarning = 1
let g:indexer_disableIndexerFilesDirsWarning=1

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
" map snipppet completion to ctrl+j
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>
"let g:snips_trigger_key='<c-j>'

"  ------------------------------------------------------
"  Using the xclip as system clipboard with ctrl+y and ctrl+p
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
" call togglebg#map("<F5>")
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


"  ------------------------------------------------------
"  Shift+Tab to autocomplete methods and properties
"  ------------------------------------------------------
inoremap <Esc>[Z <C-x><C-o>


"  ------------------------------------------------------
"  Turn Omicomplete on
"  ------------------------------------------------------
set ofu=syntaxcomplete#Complete

"  ------------------------------------------------------
"  Neo Complete Cahe
"  ------------------------------------------------------
let g:neocomplcache_enable_at_startup = 1


"  ------------------------------------------------------
"  make nerdtree ignore .pyc
"  ------------------------------------------------------
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

"  ------------------------------------------------------
" tweak for jump to definition
" 
"  http://tartley.com/?p=1277
" By default, ctags generates tags for Python functions, classes, class members, variables and imports.
" To fix this, create a ~/.ctags file:
"    --python-kinds=-iv
"    --exclude=build
"    --exclude=dist
" in case of indexer, the record for a python project should look like this:
"
"        [soda]
"
"        option:ctags_params = " --languages=python --python-kinds=-iv --exclude=build --exclude=dist " 
"        /home/thefish/projects/soda/
"
"  ------------------------------------------------------
" go to defn of tag under the cursor
fun! MatchCaseTag()
    let ic = &ic
    set noic
    try
        exe 'tjump ' . expand('<cword>')
    finally
       let &ic = ic
    endtry
endfun
nnoremap <silent> <c-]> :call MatchCaseTag()<CR>


"  ------------------------------------------------------
"  FuzzyFinder replacement
"  * **Fuzzy file, code and command finder** (like Textmante or Sublime Text 2):
"  https://github.com/fisadev/fisa-vim-config<F2>
"  * ``,e`` = open file (like the original :e) but with recursive and fuzzy file name matching. Example: if you type "mopy" it will find a file named "models.py" placed on a subdirectory. And allows you to open the selected file on a new tab with ``Ctrl-t``!
"  * ``,g`` = fuzzy symbol finder (classes, methods, variables, functions, ...) on the current file. Example: if you type "usr" it will find the User class definition on the current file. ``,G`` does the same but on all opened files.
"  * ``,c`` = fuzzy command finder (internal vim commands, or custom commands). Example: if you type "diff" it will find ``:GitDiff``, ``:diffthis``, and many other similar commands.
"  * ``,f`` = fuzzy text finder on all the opened files. Example: if you type "ctm=6" it will find the line containing "current_time = 16".
"  * ``,m`` = fuzzy finder of most recently used files.
"  * ``,we``, ``,wg``, ``,wc``, ``,wf`` and ``,wm`` = same as ``,e``, ``,g``, ``,c``, ``,f`` and ``,wm`` but initiate the search with the word under the cursor (also the upper case version of ``,G``, ``,wG``). Is useful to think about the ``,wg`` as a "fuzzy go to definition" (if the definition is in the same file, or ``,wG`` if the definition is on any of the opened files).
"  * ``,pe`` = same as ``,e`` but initiates the search with the path under the cursor.
"  ------------------------------------------------------
" CtrlP (new fuzzy finder)
let g:ctrlp_map = ',e'
nmap ,r :CtrlPRoot<CR>
nmap ,g :CtrlPBufTag<CR>
nmap ,G :CtrlPBufTagAll<CR>
nmap ,f :CtrlPLine<CR>
nmap ,m :CtrlPMRUFiles<CR>
nmap ,c :CtrlPCmdPalette<CR>
" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" CtrlP with default text
nmap ,wg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
nmap ,wG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
nmap ,wf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
nmap ,we :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
nmap ,pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
nmap ,wm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
nmap ,wc :call CtrlPWithSearchText(expand('<cword>'), 'CmdPalette')<CR>
" Don't change working directory
let g:ctrlp_working_path_mode = 0
" Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }
