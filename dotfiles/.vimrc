" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" set actual colours
set tgc
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

" install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
      \| PlugInstall --sync | source $MYVIMRC
      \| endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'lervag/vimtex'
Plug 'easymotion/vim-easymotion'
Plug 'luochen1990/rainbow'
Plug 'fladson/vim-kitty'
" TODO: set up completion
call plug#end()

set bg=dark
colo jellybeans

set nu " number lines
set rnu " relative numbering
set nosm " don't show mode in status line
set lz " skip redrawing screen in some cases
set acd " automatically change directory
set et " expand tabs
set ic " ignore case in searches
set scs " only ignore lowercase
set wmnu " command line completion
set tw=80 " wrap lines after 80 characters
set cc=+1 " colour the first bad column
set foldmethod=indent " fold by indents
let mapleader=','
let maplocalleader='\'
map <Space> <Plug>(easymotion-prefix)
nmap <leader>ev :sp $MYVIMRC<CR>
nmap <leader>y "+y
nmap <leader>p "+p
nmap <C-J> <Plug>(ale_next_wrap)
nmap <C-K> <Plug>(ale_previous_wrap)

autocmd filetype cpp nmap <leader>r :w <bar> !g++ % -o %:r && ./%:r <CR>
if has("vms")
  set nobackup    " do not keep a backup file, use versions instead
else
  set backup    " keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile  " keep an undo file (undo changes after closing)
  endif
endif
