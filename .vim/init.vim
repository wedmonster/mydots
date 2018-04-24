
source ~/.vim/bundles.vim
filetype plugin indent on 

" encoding detection
set fileencodings=utf-8
set encoding=utf-8

" enable syntax highlight and completion
let python_highlight_all=1
syntax on

" color setting
" set background=dark
color afterglow
" color smyck
" color solarized

" editor settings
set termguicolors
set confirm
set backspace=indent,eol,start
set t_Co=256                                        " explicitly tell vim that the terminal has 256 colors
set mouse=a                                         " use mouse in all modes
set report=0                                        " always report number of lines changed
set number                                          " show line numbers
set ruler
set showmatch                                       " show matching bracket
set matchtime=2                                     " show matching breakat for 0.2 seconds
set title                                           " show file in titlebar
set wrap											" don't wrap line

set autoindent
set smartindent                                     " indent when
set tabstop=4                                       " tab width
set softtabstop=4
"set shiftwidth=4
"set smarttab
"set expandtab
set cursorline!
set lazyredraw
set ttyfast
set synmaxcol=128
set hlsearch
syntax sync minlines=256

set noet ci pi sts=0 sw=4 ts=4 " needs to be modified

" clipboard setting
set clipboard=unnamedplus

" vim spell-checker
" set spell spelllang=en_us

" powerline
"let g:Powerline_symbols="fancy"
"set rtp+=$POWERLINE_HOME/bindings/vim
"set laststatus=2

" NERDTree setting
"autocmd vimenter * NERDTree          				" start with NERDTree
let NERDTreeWinPos="left"							" put NERDTree in the leftside
let g:NERDTreeDirArrowExpandable = '▸'				" change default arrows
let g:NERDTreeDirArrowCollapsible = '▾'				" change default arrows
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif       " close vim if the only left window is NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif
" autocmd BufWinEnter * :silent NERDTreeMirror

" Omni completion setting
"let g:acp_enableAtStartup = 0                       " Disable AutoComplPop.
"set omnifunc=syntaxcomplete#Complete
"let g:neocomplete#enable_at_startup = 1             " Use neocomplete.
"let g:neocomplete#enable_smart_case = 1             " Use smartcase
"let g:neocomplete#sources#syntax#min_keyword_length = 3 " Set minimum syntax keyword length.


" TagBar setting
let g:tagbar_left=0
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
" autocmd vimenter * TagbarOpen
" autocmd BufWinEnter * TagbarOpen
"autocmd bufenter * Tagbar

" Gundo setting
"let g:gundo_width = 60
"let g:gundo_preview_height = 40
"let g:gundo_right = 1

let g:mundo_width = 60
let g:mundo_preview_height = 40
let g:mundo_right = 1


" vimtex setting
"let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/SharedSupport/displayline'
"let g:vimtex_view_general_options = '-r @line @pdf @tex'
"let g:vimtex_latexmk_callback_hooks = ['UpdateSkim']

"function! UpdateSkim(status)
"if !a:status | return | endif

"let l:out = b:vimtex.out()
"let l:tex = expand('%:p')
"let l:cmd = [g:vimtex_view_general_viewer, '-r']
"if !empty(system('pgrep Skim'))
"call extend(l:cmd, ['-g'])
"endif
"if has('nvim')
"call jobstart(l:cmd + [line('.'), l:out, l:tex])
"elseif has('job')
"call job_start(l:cmd + [line('.'), l:out, l:tex])
"else
"call system(join(l:cmd + [line('.'), shellescape(l:out), shellescape(l:tex)], ' '))
"endif
"endfunction

" NERD commenter
let g:NERDCustomDelimiters = {'tex':{'left': '%'}}
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

" autocmd
autocmd BufWritePost * execute ':silent ! if [ -e tags ]; then ctags -R --exclude=@.ctagsignore . > /dev/null 2>&1; fi'

" Keybindings for plugin toggle
"nmap <F6> :NERDTreeToggle<cr>
"nmap <F5> :TagbarToggle<cr>
nmap <F4> :MundoToggle<cr>
nmap <F5> :ToggleNERDTreeAndTagbar <cr>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Setting for python indentation
au BufNewFile,BufRead *.py : 
		\ set tabstop=4 | 
		\ set softtabstop=4 |
		\ set shiftwidth=4 | 
		\ set textwidth=79 |
		\ set expandtab | 
		\ set autoindent | 
		\ set fileformat=unix | 

"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"project_base_dir = os.environ['VIRTUAL_ENV']
"activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"execfile(activate_this, dict(__file__=activate_this))
"EOF

" display 80 characters line
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
set colorcolumn=80

" vim start setting
autocmd vimenter * ToggleNERDTreeAndTagbar
autocmd tabenter * ToggleNERDTreeAndTagbar

" matalb setting
" autocmd BufEnter *.m compiler mlint
"

"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='afterglow'

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" YCM
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

"To avoid conflict snippets
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1 

nnoremap <leader>g :YcmCompleter GoTo<CR>
nnoremap <leader>gg :YcmCompleter GoToImprecise<CR>
nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>t :YcmCompleter GetType<CR>
nnoremap <leader>p :YcmCompleter GetParent<CR>

let g:ycm_python_binary_path = '/usr/local/bin/python3'
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

"mundo
set undofile
set undodir=~/.vim/undo

