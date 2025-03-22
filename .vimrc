" Basic .vimrc Template
" =====================
" This is a comprehensive starter .vimrc configuration with common settings
" Feel free to modify to suit your needs

" === General Settings ===
set nocompatible              " Use Vim settings, rather than Vi settings
filetype plugin indent on     " Enable file type detection and plugins
syntax on                     " Enable syntax highlighting

" === User Interface ===
set number                    " Show line numbers
set relativenumber            " Show relative line numbers
set ruler                     " Show cursor position
set showcmd                   " Show command in bottom bar
set wildmenu                  " Visual autocomplete for command menu
set showmatch                 " Highlight matching brackets
set laststatus=2              " Always show status line
set title                     " Show file title in terminal window
set cursorline                " Highlight current line
set visualbell                " Use visual bell instead of beeping
set scrolloff=5               " Keep 5 lines below and above the cursor

" === Colors and Fonts ===
set background=dark           " Use colors suitable for dark background
"colorscheme desert           " Uncomment to set colorscheme (if available)
set encoding=utf-8            " Use UTF-8 encoding

" === Indentation and Tabs ===
set expandtab                 " Convert tabs to spaces
set tabstop=4                 " Number of visual spaces per TAB
set softtabstop=4             " Number of spaces in tab when editing
set shiftwidth=4              " When indenting with '>', use 4 spaces
set autoindent                " Auto-indent new lines
set smartindent               " Enable smart indent
set wrap                      " Wrap long lines

" === Search Settings ===
set incsearch                 " Search as characters are entered
set hlsearch                  " Highlight matches
set ignorecase                " Ignore case when searching
set smartcase                 " Override 'ignorecase' if search contains uppercase

" === Folding ===
set foldenable                " Enable folding
set foldmethod=indent         " Fold based on indentation
set foldlevelstart=10         " Open most folds by default
set foldnestmax=10            " 10 nested fold max

" === Backups and Swap Files ===
set backup                    " Enable backups
set backupdir=~/.vim/backup// " Backup directory
set directory=~/.vim/swap//   " Swap file directory
set undodir=~/.vim/undo//     " Undo directory
set undofile                  " Enable persistent undo

" Create directories if they don't exist
if !isdirectory($HOME."/.vim/backup")
    call mkdir($HOME."/.vim/backup", "p", 0700)
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap", "p", 0700)
endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "p", 0700)
endif

" === Key Mappings ===
" Map jj to Escape in insert mode
inoremap jj <Esc>

" Use space as leader key
let mapleader = " "

" Quickly edit/reload vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Make Y behave like D and C (yank to end of line)
nnoremap Y y$

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clear search highlighting with Escape
nnoremap <silent> <Esc> :noh<CR>

" === Split Behavior ===
set splitbelow                " Horizontal splits open below current window
set splitright                " Vertical splits open to the right

" === Buffers ===
set hidden                    " Allow buffers to be hidden with unsaved changes

" === Wildmenu Completion ===
set wildignore+=*.o,*.obj,*.pyc,*.swp,*.DS_Store,*.zip,*.git

" === File Type Specific Settings ===
" Python
augroup python_files
    autocmd!
    autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
augroup END

" Web Development
augroup web_files
    autocmd!
    autocmd FileType html,css,javascript,typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
augroup END

" === Plugin Configuration ===
" Uncomment if you're using plugins with a plugin manager

" === Status Line ===
" Simple status line, can be replaced with a plugin like lightline or airline
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%l,%v]\ [%p%%]\ %{strftime('%H:%M')}

" === Performance Options ===
set lazyredraw                " Don't redraw while executing macros
set ttyfast                   " Faster redrawing
set updatetime=300            " Faster update time for better user experience

" === Optional Terminal Settings ===
" Set the terminal title
set title
set titlestring=%<%F

" === End of Configuration ===
