source $HOME/.vim/configs/variables.vim
let Tlist_Ctags_Cmd='ctags'
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Show_One_File=0
let Tlist_Process_File_Always=1
let Tlist_Inc_Winwidth=0

nmap <leader>tl :Tlist<cr>
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
