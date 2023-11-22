-- Alias for quick access to the hotkey installation method
local map = vim.api.nvim_set_keymap

-- method for the hotkeys on "normal" mode
function nm(key, command) 
	map('n', key, command, {noremap = true})
end

-- method for the hotkeys on "insert" mode
function im(key, command)
	map('i', key, command, {noremap = true})
end

-- method for the hotkeys on "visual" mode
function vm(key, command)
	map('v', key, command, {noremap = true})
end

-- method for the hotkeys on "terminal" mode
function tm(key, command)
	map('t', key, command, {noremap = true})
end
