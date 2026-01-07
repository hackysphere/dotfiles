-- this is the mason config
-- this is also the config for LSP
-- see conform for formatter-specific config
-- see nvim-lint for linter-specific config
-- see nvim-dap for DAP-specific config

return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"basedpyright", -- TODO: should figure out how to only use this for renaming
			"ts_ls",
			"astro",
			"svelte",
			"html",
			"cssls",
			"ty",
			"ruff",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				auto_update = true,
				ensure_installed = {
					-- formatters
					"black",
					"prettier",
					"stylua",

					-- linters
					"jsonlint",

					-- DAPs
					"debugpy",
				},
			},
		},
		{ "j-hui/fidget.nvim", opts = {} },
	},
}
