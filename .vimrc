" Created: 0xlay

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'sainnhe/edge'

" bottom bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'preservim/nerdtree'

Plugin 'ycm-core/YouCompleteMe'

call vundle#end()
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab " set space
set softtabstop=4 " 4 space in tab
set autoindent

" search configuration
set ignorecase
set smartcase 
set hlsearch " highlight search
set incsearch

set t_Co=256 " On 256 color in terminal
set mouse=a " On mouse
set termencoding=utf-8

set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf8,cp1251
set ruler
set number
set visualbell t_vb= " Off sound in Vim
set guioptions= " Remove scrollbar on both sides
set clipboard= " set default system buffer = unnamedplus

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
if (empty($TMUX))
    if (has("nvim"))
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    if (has("termguicolors"))
        set termguicolors
    endif
endif

syntax on

"set theme

if has('termguicolors')
    set termguicolors
endif

let g:edge_style = 'aura'
let g:edge_enable_italic = 1
let g:edge_disable_italic_comment = 1
colorscheme edge
set background=dark

" let g:onedark_termcolors=256
" let g:onedark_terminal_italics=1
" colorscheme onedark
" let g:airline_theme='onedark'

" colorscheme gruvbox
" set background=dark

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Support Yank and Paste in WSL
if system('uname -r') =~ "Microsoft"
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe', @")
    augroup END
    augroup Paste
        noremap "+p :exe 'norm a'.system('/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -Command Get-Clipboard')<CR>
    augroup END
endif

" Snippets
map copyright <ESC>i// Created: 0xlay<CR>
