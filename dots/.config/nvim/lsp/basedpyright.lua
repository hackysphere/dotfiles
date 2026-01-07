-- TODO: maybe convert this to vim.lsp.config format (https://github.com/neovim/nvim-lspconfig#configuration)

return {
	settings = {
		basedpyright = {
			analysis = {
				typeCheckingMode = "standard",
			},
		}
	}
}
