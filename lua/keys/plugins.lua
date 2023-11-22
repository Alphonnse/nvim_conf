require('keys/alias')

--vim.g.mapleader = ' '               -- Используем Space, как клавишу для альтернативных хотекеев

-- LSP (все горячие клавиши начинаются с g), кроме ховера
nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>')        -- Ховер для объекта
nm('gf', '<cmd>lua vim.lsp.buf.format()<CR>')      -- Форматировать документ
nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>') -- Действия с кодом
nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')      -- Переименовать объект

-- Отркыть NvimTree
nm('<leader>v', '<cmd>NeoTreeRevealToggle<CR>')

-- Telescope
nm('gd', '<cmd>Telescope lsp_definitions<CR>')     -- Объявления в LSP
nm('<leader>p', '<cmd>Telescope oldfiles<CR>')     -- Просмотр недавних файлов
nm('<leader>o', '<cmd>Telescope git_files<CR>')    -- Поиск файлов
nm('<leader>b', '<cmd>Telescope git_branches<CR>') -- Ветки в Git
nm('<leader>f', '<cmd>Telescope live_grep<CR>')    -- Поиск строки
nm('<leader>q', '<cmd>Telescope buffers<CR>')

-- BufferLine
nm('<leader>c', '<cmd>bd<CR>')                  -- Закрыть буффер
nm('<leader>[', '<cmd>BufferLineCyclePrev<CR>') -- Перейти в предыдущий буффер
nm('<leader>]', '<cmd>BufferLineCycleNext<CR>') -- Перейти в следующий буффер

nm('<leader>x', '<cmd>TroubleToggle<CR>')       -- Открыть меню с проблемами LSP
nm('gr', '<cmd>Trouble lsp_references<CR>')     -- Референсы в LSP

-- Formatter
nm('<leader>l', '<cmd>Format<CR>')




nm('gor', '<cmd>GoRun<CR>')
