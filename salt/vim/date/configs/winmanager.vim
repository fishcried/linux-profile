source $HOME/.vim/configs/variables.vim

"==============================================================================
"winmanager
"==============================================================================
let g:NERDTree_title="[NERDTree]"
let g:winManagerWindowLayout="NERDTree|TagList"
let g:persistentBehaviour=0
let g:winManagerWidth=30

function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
      
function! NERDTree_IsValid()  
    return 1  
endfunction  
nmap <silent> <F8> :WMToggle<cr>
