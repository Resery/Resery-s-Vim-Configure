inoremap jj <ESC>
set number
set fdm=manual

set cursorcolumn
set cursorline

colorscheme seoul256

set expandtab
set tabstop=4
set shiftwidth=4

map <C-n> :NERDTreeToggle<CR>
set autoread
syntax enable
set ts=4
nnoremap <F3> :set hlsearch!<CR>

au BufWinLeave * silent mkview
au BufWinEnter * silent loadview

set tags=tags;
set autochdir

let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_WinWidth=31
let Tlist_Auto_Highlight_Tag=1 
let Tlist_Auto_Open=1 
let Tlist_Auto_Update=1 
let Tlist_Display_Tag_Scope=1 
let Tlist_Exit_OnlyWindow=1 
let Tlist_Enable_Dold_Column=1 
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Show_One_File=1 
"let Tlist_Use_Right_Window=1 
let Tlist_Use_SingleClick=1 
nnoremap <silent> <F8> :TlistToggle<CR> 
                                                    
nmap ff <c-]>
nmap ss <c-t>
nmap fs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap fg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap fc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap ft :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap fe :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap fn :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap fi :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap fd :cs find d <C-R>=expand("<cword>")<CR><CR>

filetype plugin on 
autocmd FileType python set omnifunc=pythoncomplete#Complete 
autocmd FileType javascrīpt set omnifunc=javascriptcomplete#CompleteJS 
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 
autocmd FileType css set omnifunc=csscomplete#CompleteCSS 
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags 
autocmd FileType php set omnifunc=phpcomplete#CompletePHP 
autocmd FileType c set omnifunc=ccomplete#Complete 

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Vim Ranibow "
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" Theme "
Plug 'soft-aesthetic/soft-era-vim'

" Cscope Plugin "
Plug 'tczengming/autoload_cscope.vim'

" Initialize plugin system
call plug#end()
