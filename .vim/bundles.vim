set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" IDE features
Plugin 'scrooloose/nerdtree' 							" a tree explorer plugin for vim
"Plugin 'vim-scripts/AutoComplPop'                      " too slow            
" Plugin 'Shougo/neocomplete.vim'                         " faster than AutoComplPop

"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets
Plugin 'majutsushi/tagbar'                             " a vim plugin that displays tags in a window
Plugin 'easymotion/vim-easymotion'                      " a motion plugin for fast navigating a file
Plugin 'scrooloose/nerdcommenter'                       " a plugin for easy-commenting
Plugin 'pseewald/nerdtree-tagbar-combined'
"Plugin 'daeyun/vim-matlab'								" a plugin for matlab
Plugin 'MortenStabenau/matlab-vim'
Plugin 'xolox/vim-misc'                                " for vim-easytags
Plugin 'xolox/vim-easytags'                            " deprecated - automated tag file generation and syntax highlighting of tags in Vim
Plugin 'tmhedberg/matchit'                             " extended % matching for HTML, LaTeX, and many other languages
"Plugin 'vim-scripts/indentpython.vim'                  " python indentation
Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
"Plugin 'sjl/gundo.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'simnalamburt/vim-mundo'

" Latex features
"Plugin 'lervag/vimtex'

call vundle#end()
