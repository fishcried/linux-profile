source $HOME/.vim/configs/variables.vim

"==============================================================================
"winmanager
"==============================================================================
let g:winManagerWindowLayout="TagList|FileExplorer,BufExplorer"
let g:persistentBehaviour=0
let g:winManagerWidth=30

let g:minBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1  
let g:miniBufExplModSelTarget=1  
let g:C_MapLeader=';'

nmap <silent> <F8> :WMToggle<cr>
