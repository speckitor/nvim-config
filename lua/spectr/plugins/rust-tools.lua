return {
	"simrat39/rust-tools.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	config = function()
		local rt = require("rust-tools")

		local on_attach = require("spectr.plugins.lsp.lspconfig").on_attach

		local capabilities = require("spectr.plugins.lsp.lspconfig").capabilities

		rt.setup({
			server = {
				on_attach = on_attach,
				capabilities = capabilities,
			},
		})
	end,
}
