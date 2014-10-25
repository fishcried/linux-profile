let g:ctrlp_map = ',,'
let g:ctrlp_by_filename = 1
let g:ctrlp_regexp = 1
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'
let g:ctrlp_use_caching = 1
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git)$',
  \ 'file': '\v\.(log|jpg|png|jpeg)$',
  \ }
let g:ctrlp_max_files = 10000
let g:ctrlp_max_depth = 40
let g:ctrlp_open_multiple_files = 'v'

