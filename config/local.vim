" turn arrow keys into windows resizers
" let g:elite_mode=1

" npm - have to set this because we are using nvm
let g:node_host_prog = '/Users/justin/.nvm/versions/node/v10.6.0/bin/neovim-node-host'

" ag silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
map <Leader>a :Ack<Space>

" make line numbering hybrid - i.e. show current line number with offsets above and below
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" and set colour of line numbers (except current line)
:highlight LineNr guifg=#606060

" Keep cursor position across matches
let g:asterisk#keeppos = 1

" minimum height for command line area
set cmdheight=1
