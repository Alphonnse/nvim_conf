local opt = vim.opt
local g = vim.g
-- [[PANELS SETTING]]
-- Vertical splits become on the right
opt.splitright = true

-- Horizontal splits become on the down
opt.splitbelow = true

-- [[ADDITIONAL SETTINGS]]
-- use the system clipboard
opt.clipboard = 'unnamedplus'

-- Disable auto-completion of files at the end (отключаем автодополнение файлов в конце)
opt.fixeol = false

-- Auto-completion (built into Novim)
opt.completeopt = 'menuone,noselect'

-- Not auto comment new lines after the transitoin
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

opt.guifont= 'Hack:h9'              -- Изменить размер шрифта
opt.colorcolumn = '80'              -- Разделитель на 80 символов
opt.cursorline = true               -- Подсветка строки с курсором
opt.spelllang= { 'en_us', 'ru' }    -- Словари рус eng
opt.spell = true
opt.number = true                   -- Включаем нумерацию строк
opt.relativenumber = false          -- Вкл. относительную нумерацию строк
opt.so=999                          -- Курсор всегда в центре экрана
opt.termguicolors = true            --  24-bit RGB colors

g.translate_source = 'ru'
g.translate_target = 'en'


-- Запоминает где nvim последний раз редактировал файл
vim.cmd [[autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
]]
-- Подсвечивает на доли секунды скопированную часть текста
vim.api.nvim_exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)
