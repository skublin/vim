" SZYMON KUBLIN - VIM CONFIG

if has('termguicolors')
	set termguicolors
endif

set background=dark

let g:everforest_better_performance=1

colorscheme everforest

set mouse=a

set number

set autoindent

set nocompatible

filetype on

filetype plugin on

filetype indent on

syntax on

set cursorline

set shiftwidth=4

set tabstop=4

set expandtab

set nobackup

set nowrap

set incsearch

set showmode

set showmatch

set hlsearch

set history=1000

set wildmenu

set wildmode=list:longest

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.exe,*.flv,*.img,*.xlsx

" PLUGINS ------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')

    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'

call plug#end()

" }}}

" MAPPING -------------------------------------------------------------

" compile C file
au FileType c nnoremap <F8> :w <CR> :!gcc % -o %< && ./%< <CR>

" compile Python file
au FileType python nnoremap <F8> :w <CR> :!python % <CR>

" open NERDTree plugin
nmap <F6> :NERDTreeToggle<CR>

" use CTRL+Left to move to previous tab
nnoremap <C-Left> :tabprevious<CR>

" use CTRL+Right to move to next tab
nnoremap <C-Right> :tabnext<CR>

" type <qq> in normal mode to put "" around current word
nnoremap <qq> viw<esc>a"<esc>bi"<esc>lel

" ABBREVIATIONS -------------------------------------------------------

" show current date 
ab <expr> dd strftime("%b %d, %Y")

" show info comment in C
ab skc /*<CR>Author: Szymon Kublin (szymonkublin@gmail.com)<CR>Date: <C-R>=strftime('%d-%m-%Y')<esc><CR>/

" prepare printf in C
ab pf printf("");<esc>2hi

" prepare include in C
ab #i #include <><Left>

" prepare basic C structure
au FileType c :iabbrev start #include <stdio.h><CR><CR>int main()<CR>{<CR>printf("Hello!\n");<CR><CR>return 0;<CR>}<Up><Up>

" prepare basic Python structure
au FileType python iabbrev start def run():<CR>print("Hello!")<CR><BS><CR><CR>if __name__ == "__main__":<CR>run()<CR><BS>

" show info comment in Python
ab skpy """<CR>Author: Szymon Kublin (szymonkublin@gmail.com)<CR>Date: <C-R>=strftime('%d-%m-%Y')<esc><CR>"""

" prepare name == main instruction in Python
ab ifname if __name__ == "__main__":

