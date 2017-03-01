
source ~/.vim/bundles.vim
filetype plugin on 

" encoding detection
set fileencodings=utf-8
set encoding=utf-8

" enable syntax highlight and completion
syntax on

" color setting
set background=dark
color solarized

" editor settings
set confirm
set backspace=indent,eol,start
set t_Co=256                                        " explicitly tell vim that the terminal has 256 colors
set mouse=a                                         " use mouse in all modes
set report=0                                        " always report number of lines changed
set number                                          " show line numbers
set showmatch                                       " show matching bracket
set matchtime=2                                     " show matching breakat for 0.2 seconds
set title                                           " show file in titlebar
set nowrap											" don't wrap line

set autoindent
set smartindent                                     " indent when
set tabstop=4                                       " tab width
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" powerline
let g:Powerline_symbols="fancy"
set rtp+=$POWERLINE_HOME/bindings/vim
set laststatus=2

" NERDTree setting
autocmd vimenter * NERDTree          				" start with NERDTree
let NERDTreeWinPos="right"							" put NERDTree in the rightside
let g:NERDTreeDirArrowExpandable = '▸'				" change default arrows
let g:NERDTreeDirArrowCollapsible = '▾'				" change default arrows
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif       " close vim if the only left window is NERDTree

" Omni completion setting
set omnifunc=syntaxcomplete#Complete

" TagBar setting
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" vimtex setting
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
let g:vimtex_view_general_options = '-r @line @pdf @tex'
let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']

function! UpdateSkim(status)
    if !a:status | return | endif

    let l:out = b:vimtex.out()
    let l:tex = expand('%:p')
    let l:cmd = [g:vimtex_view_general_viewer, '-r']
    if !empty(system('pgrep Skim'))
        call extend(l:cmd, ['-g'])
    endif
    if has('nvim')
        call jobstart(l:cmd + [line('.'), l:out, l:tex])
    elseif has('job')
        call job_start(l:cmd + [line('.'), l:out, l:tex])
    else
        call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
    endif
endfunction

" Keybindings for plugin toggle
nmap <F6> :NERDTreeToggle<cr>
nmap <F5> :TagbarToggle<cr>

