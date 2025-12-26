-- this is the formatter configuration, see mason.lua for the "general" config
-- DO NOT configure mason.nvim here, it is just a dependency

return {
	"stevearc/conform.nvim",
	dependencies = {
		"mason-org/mason.nvim",
	},
	opts = {
		default_format_opts = {
			lsp_format = "fallback",
		},
	},
}
