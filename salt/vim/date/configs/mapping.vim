source $HOME/.vim/configs/variables.vim
nmap <space> :

" 复制粘贴, 快速操作剪切板
map <leader><C-c> "+y
map <leader><C-v> "+gP
map <leader><C-a> ggVG"+y

" 快速保存
nmap <leader>s :w<cr>
" 快速退出
nmap <leader>q :q<cr>
" 快速强制退出
nmap <leader>qq :q!<cr>
" 编辑配置文件
nmap <leader>rc :e! ~/.vimrc<cr>
" 关闭搜索高亮
map <silent> <leader><cr> :noh<cr>

" 关于tab的快捷操作
map <c-p> :tabprevious<cr>
map <c-n> :tabnext<cr>
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"paste
nmap <leader>p :set paste<cr>
nmap <leader>np :set nopaste<cr>

" 快速在帮助中导航
nmap <buffer> <CR> <C-]>
nmap <buffer> <BS> <C-T>
map <leader>help <ESC>:exec "help ".expand("<cWORD>")<CR>
