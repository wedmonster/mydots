set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" IDE features
Plugin 'scrooloose/nerdtree' 							" a tree explorer plugin for vim
Plugin 'vim-scripts/AutoComplPop'                        
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'                              " a vim plugin that displays tags in a window

" Latex features
Plugin 'LaTeX-Box-Team/LaTeX-Box'

call vundle#end()
