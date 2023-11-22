local cmd = vim.cmd; -- Command function
local api = vim.api; -- Neovim API
local lsp = vim.lsp; -- LSP API
local fn = vim.fn;   -- Vim function
local g = vim.g;     -- Vim globals
local opt = vim.opt; -- Vim optionals
local theme = "sonokai"

cmd[[let g:sonokai_transparent_background = 1]]
cmd("color " .. theme)
