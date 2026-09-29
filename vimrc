set noshowmode
set autoread
set nohlsearch

unmap AA
map QQ ;

au BufRead * syn match vroom_command "\v^\s*[\$>].*$"
hi vroom_command term=bold,italic,underline ctermfg=Yellow
au BufRead * syn match https_url "\vhttps:.*"
hi https_url term=bold,italic,underline ctermfg=LightBlue

autocmd BufRead,BufNewFile *.ys set filetype=yaml
autocmd BufRead,BufNewFile *.yaml set filetype=yaml

map j /^\(\s\+[\$>]\\|.*https:\)<cr>
map k ?^\(\s\+[\$>]\\|.*https:\)<cr>

function! VroomSlideRunner()
  if getline('.') != ''
    execute "!./vroom-slide-runner " . bufname('%') . " " . a:lastline
  endif
endfunction

map <ENTER> :call VroomSlideRunner()<CR><CR>

map q ;
map qq :<cr>
map QW :q!<cr><cr>
map rr :e! %<cr>
map yy :set ft=yaml %<cr>
map 1 :wincmd o<cr>
map 2 :wincmd v<cr>
map \1 :w<cr>
