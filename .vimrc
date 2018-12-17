set nocompatible 
filetype off 

" set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins  
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All plugin are added before the following line
call vundle#end()

" Now we turn our filetype functionality back on
syntax on
filetype plugin indent on

" Close tags setups for certains file types
let g:closetag_filenames="*.html,*.xhtml,*.phtml"

" Numbering on the side of each vim page
set number

" Language specific syntax highlighting 
syntax on

" (Row,Col) at bottom right of a vim page
set ruler

" More natural splitting in vim
set splitbelow
set splitright

" Repeat resizing of vim panes
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
  map < <C-W><
  map > <C-W>>
endif	

" Make backspace work like other programs
set backspace=indent,eol,start

" Autocompletion config for YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" ctrlp search activation
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" NerdTree config
map <C-n> :NERDTreeToggle<CR>
autocmd vimenter * NERDTree
