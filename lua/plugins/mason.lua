local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})
mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls", -- LSP for Lua language
		"tsserver", -- LSP for Typescript and Javascript
		"emmet_ls", -- LSP for Emmet (Vue, HTML, CSS)
		"pyright", -- LSP for Python
		"volar", -- LSP for Vue
		"gopls", -- LSP for Go
		-- "black",
	}
});

-- Setup every needed language server in lspconfig
mason_lspconfig.setup_handlers {
	function(server_name)
		lspconfig[server_name].setup {}
	end,
}

-- возникает ошибка либо из за того, что написано после этого (либо из за штуки в файле испортов packer_install)
local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black,
		null_ls.builtins.diagnostics.golangci_lint,
	},
})

local sign = function(opts)
	vim.fn.sign_define(opts.name, {
		texthl = opts.name,
		text = opts.text,
		numhl = ''
	})
end
sign({ name = 'DiagnosticSignError', text = '✘' })
sign({ name = 'DiagnosticSignWarn', text = '▲' })
sign({ name = 'DiagnosticSignHint', text = '⚑' })
sign({ name = 'DiagnosticSignInfo', text = '' })
