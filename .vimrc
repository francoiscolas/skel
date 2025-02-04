set title                       " Change the terminal's title.

set nowrap
set tabstop=4                   " A tab is 4 spaces.
set softtabstop=4               " Remove tab with <backspace>, even if spaces.
set shiftwidth=4
set autoindent
set expandtab                   " Use spaces instead of tabs.
set backspace=indent,eol,start
set number                      " Always show line numbers.
set showmatch                   " Show matching parenthesis.
set scrolloff=4                 " Keep 4 lines off the edges of the screen when scrolling.
set hlsearch                    " Highlight search terms.
set incsearch                   " Show search matches as you type.
set ignorecase smartcase        " Ignore case if all lowercase case-sensitive otherwise.
set modeline                    " Enable file-specific settings.

set hidden                      " Allow to keep a file unsaved in background.

set wildmenu
set wildmode=longest:list,full

filetype plugin on
filetype indent on
