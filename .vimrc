" --- Basic Settings (Existing) ---
syntax on
set mouse=a
set clipboard=unnamedplus


" --- Indentation and Tabs (Existing) ---
set tabstop=4
set shiftwidth=4
set autoindent

" NEW: Use spaces instead of tabs (highly recommended for consistency)
set expandtab

" NEW: Set the 'smart indent' option for better language-aware indentation
set smartindent


" --- Search and Highlighting (Existing) ---
set hlsearch
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" NEW: Smart Case Search - Search is case-sensitive only if you use capital letters
set ignorecase
set smartcase


" --- General Quality of Life (NEW) ---

" Show line numbers (essential for navigation and debugging)
set number

" Show relative line numbers (essential for quick movement)
" This shows the number of lines above/below the cursor. Use j/k to move.
" Example: To move 10 lines down, type 10j.
set relativenumber

" Display the cursor position in the status line
set ruler

" Always show the status line
set laststatus=2

" Set the file type automatically
filetype plugin indent on

" Enable better command line completion
set wildmenu

" Allow backspacing over autoindent, line breaks and start of insert
set backspace=indent,eol,start

" Set minimum rows/columns to scroll when the cursor moves off the screen
set scrolloff=5


" --- Appearance and Performance (NEW) ---

" Improve responsiveness when running macros or complex operations
set ttyfast

" Set encoding to UTF-8
set encoding=utf-8

" Use Vim's internal syntax highlighting and coloring system
set termguicolors

" Disable the blinking cursor (less distracting)
set guicursor=
