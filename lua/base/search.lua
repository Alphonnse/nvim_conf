-- [[VARIABLES]]

-- There is the alias for vim.otp
local opt = vim.opt

-- There is same thing for vim.global variables
local g = vim.g

-- [[SEARCH]]
-- Ignore the register while search. if there is "IGNORE" it will show "ignore"
opt.ignorecase = true

-- Not ignore register when there is not all characteris on hight register
-- otp.smartcase = true

-- Highlighte the finded
opt.showmatch = true
