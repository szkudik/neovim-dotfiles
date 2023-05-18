-- print("Dir working")
local vo = vim.opt
local vc = vim.cmd

vo.number = true
vo.cursorline = true
vc("autocmd BufWrite * mkview")
vc("autocmd BufRead * silent! loadview")
