-- this is the mason config
-- this is also the config for LSP
-- see conform for formatter-specific config
-- see nvim-lint for linter-specific config
-- see nvim-dap for DAP-specific config

return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"ast_grep",
			"lua_ls",
			-- "basedpyright",
			"ts_ls",
			"astro",
			"svelte",
			"html",
			"cssls",
			"ty",
			"ruff",
			"docker_language_server",
			"docker_compose_language_service",
			-- "oxlint",  -- currently doesn't support svelte
			"biome",
			"gopls",
			"yamlls",
			"jsonls",
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
					-- "oxfmt",  -- currently doesn't support svelte
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
