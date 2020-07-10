" Vim syntax file
" Begin my settings!

" Disable the splash screen
:set shortmess +=I

" Enable pathogen bundles
" See http://www.vim.org/scripts/script.php?script_id=2332
" Put github plugins under .vim/bundle/ -- which allows keeping them updated
" without having to do separate installation.
" Call "filetype off" first to ensure that bundle ftplugins can be added to the
" path before we re-enable it later in the vimrc.


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
" Enable pathogen bundles
" See http://www.vim.org/scripts/script.php?script_id=2332
" Put github plugins under .vim/bundle/ -- which allows keeping them updated
" without having to do separate installation.
" Call "filetype off" first to ensure that bundle ftplugins can be added to the
" path before we re-enable it later in the vimrc.
:filetype off
call pathogen#infect()
call pathogen#helptags()

" if any error with pathogen then use => :set cp? and result must be compatibility 
" Issue link https://github.com/tpope/vim-pathogen/issues/50

" Added 2010-09-21 Based on http://stevelosh.com/blog/2010/09/coming-home-to-vim
" Set mapleader to ","
let mapleader = ","

" vimcasts #24
" Auto-reload vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    filetype plugin indent on
endif
" Load vimrc in new tab with leader-v
nmap <leader>v :tabedit $MYVIMRC<CR>

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
:set hidden

" I like tabstops of 4, and prefer spaces to tabs. I want the text width to be
" 80, and for it to wrap. My default background is dark. I like syntax
" highlighting.
:set nocompatible
:set encoding=utf-8
:set expandtab
:set textwidth=80
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set number
:set background=dark
:syntax on
:set ttyfast
:set showcmd
:set showmode
:set wildmenu
:set wildmode=list:longest
:set undofile
:set splitbelow
:set splitright

" Remap F1 to escape, because that happens a lot when reaching. :)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" " Via https://twitter.com/vimtips/status/208241766816677889
" " Allows all operations to work with system clipboard
" :set clipboard=unnamed

" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
":set relativenumber

" Added 2005-03-23 Based on http://www.perlmonks.org/index.pl?node_id=441738
:set smarttab
:set shiftround
:set autoindent
:set smartindent

" "sudo" save:
:cmap w!! w !sudo tee % >/dev/null

" This is for mouse scrolling (primarily in GVIM)
:map <M-Esc>[62~ <MouseDown>
:map! <M-Esc>[62~ <MouseDown>
:map <M-Esc>[63~ <MouseUp>
:map! <M-Esc>[63~ <MouseUp>
:map <M-Esc>[64~ <S-MouseDown>
:map! <M-Esc>[64~ <S-MouseDown>
:map <M-Esc>[65~ <S-MouseUp>
:map! <M-Esc>[65~ <S-MouseUp>

" This _may_ be needed to allow scrolling within tmux
" :set ttymouse=xterm2

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
:nnoremap / /\v
:vnoremap / /\v

" Execute last command over a visual selection
:vnoremap . :norm.<CR>

" Folding
" Toggle folding with spacebar instead of za
nnoremap <Space> za

" Pasting toggle...
:set pastetoggle=<Ins>

" Local scripts/helpfiles
:helptags $HOME/.vim_runtime/doc

" Skeleton (template) files...
:autocmd BufNewFile *.html 0r $HOME/.vim/skeleton.html

" Note: The "normal" command afterwards deletes an ugly pending line and moves
" the cursor to the middle of the file.
autocmd BufNewFile *.php 0r ~/.vim/skeletons/skeleton.php | normal Gdd

" Highlight Searches
:set highlight=lub
:map <Leader>s :set hlsearch<CR>
:map <Leader>S :set nohlsearch<CR>
:set incsearch
:set showmatch

