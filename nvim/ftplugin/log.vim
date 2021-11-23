" Disable nvim-comp for log files which could be large
" and usually do not need any editing.

lua require('cmp').setup.buffer { enabled = false }
