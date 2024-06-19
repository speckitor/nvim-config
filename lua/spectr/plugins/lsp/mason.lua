return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			local mason = require("mason")

			local mason_tool_installer = require("mason-tool-installer")

			mason.setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})

			mason_tool_installer.setup({
				ensure_installed = {
					"rustfmt",
					"clang-format",
					"gofumpt",
					"golines",
					"goimports-reviser",
					"prettier",
					"stylua",
					"black",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		config = function()
			local mason_lspconfig = require("mason-lspconfig")

			mason_lspconfig.setup({
				ensure_installed = {
					"rust_analyzer",
					"clangd",
					"gopls",
					"tsserver",
					"html",
					"cssls",
					"tailwindcss",
					"lua_ls",
				},
				automatic_installation = true,
			})
		end,
	},
}
