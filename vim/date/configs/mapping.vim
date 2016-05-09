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
map <leader>tl :tabprevious<cr>
map <leader>th :tabnext<cr>
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove


" buffer相关
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :c#<CR>
nnoremap <Leader>d :bd<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" 窗口快速跳转
map <a-w> <c-w>
map <a-h> <c-w>h
map <a-j> <c-w>j
map <a-k> <c-w>k
map <a-l> <c-w>l
imap <a-h> <esc><c-w>hi
imap <a-j> <esc><c-w>ji
imap <a-k> <esc><c-w>ki
imap <a-l> <esc><c-w>li

"paste
nmap <leader>p :set paste<cr>
nmap <leader>np :set nopaste<cr>

" 快速在帮助中导航
nmap <buffer> <CR> <C-]>
nmap <buffer> <BS> <C-T>
map <leader>help <ESC>:exec "help ".expand("<cWORD>")<CR>

" 配置quickfix
nmap <leader>cn :cn<cr>
nmap <leader>cp :cp<cr>
nmap <leader>cw :cw 10<cr>
nmap <leader>cc :cclose<cr>

" 配置ack.vim配置
nmap <leader>ack :Ack 
nmap <leader>ackw :call Search_Word()<cr>
function Search_Word()
	let w = expand("<cword>")
	execute "Ack " . w 
endfunction

" vimwiki
nmap <leader>wiki :VimwikiAll2HTML<cr>

if exists('$TMUX')
  set term=screen-256color
endif

if exists('$ITERM_PROFILE')
  if exists('$TMUX')
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
end

function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

let &t_SI .= WrapForTmux("\<Esc>[?2004h")
let &t_EI .= WrapForTmux("\<Esc>[?2004l")

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

" 通过firefox快速预览markdown效果.
autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} map <Leader>fmk :!firefox --new-tab "%:p"<CR>
