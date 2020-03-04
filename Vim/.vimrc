set number
set ai

"colors
syntax on
colorscheme space-vim-dark "monokai
"set termguicolors

"highlight
set incsearch
set hlsearch
set laststatus=2
set relativenumber

"folds
set foldmethod=indent
set foldnestmax=10
set foldlevel=10

"no arrow keys in normal mode
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

:nmap <c-a> :w<CR>
:imap <c-a> <Esc>:w<CR>

"map <C-o> :NERDTreeToggle<CR>

if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif

"Set transparent background
hi Normal guibg=NONE ctermbg=NONE

set gfn=Hack\ 1

execute pathogen#infect()
"let g:jedi"show_call_signatures = "0"
"let g:pymode_rope = 0

"set tabstop=4
" when indenting with '>', use 4 spaces width
"set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab
"let g:airline"extensions"tmuxline"enabled = 1
"let airline"extensions"tmuxline"snapshot_file = "~/.tmux-status.conf"
let g:airline_theme='luna'

"tabs
nmap <F6> :tabp<CR>
nmap <F8> :tabn<CR>
nmap <F9> :tabe

nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
filetype plugin on
"let g:vimwiki_list = [{'path': '~/vimwiki/',
"                          \ 'syntax': 'markdown', 'ext': '.md'}]

" find path
set path+=**

" display matching files
set wildmenu

" Add tags!
command! MakeTags !ctags -R .
" ^] to go to tag and ^t to come back

" Browser
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
"let g:netrw_list_hide=netrw_gitignore"Hide()
"let g:netrw_list_hide.=',\(^\|\s\s)\zs\.\S\+'

" HTML Template!
"nnoremap ,html :-1read /home/vitrioil/.vim/.skeleton.html<CR>6jf>a

"set omnifunc=syntaxcomplete"Complete

"quotes magic
:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P
:nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" Pmenu color
highlight Pmenu guibg=brown gui=bold

" Vertical Split
hi VertSplit guibg=bg guifg=bg
