return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	opts = {
		options = {
			always_show_bufferline = false,
			mode = "tabs", -- show the tabs, not buffers
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function (_, _, diags)
				-- for each of the possible diagnostics:
				-- if diagnostic exists then return count and symbol, otherwise leave blank
				-- if i don't do this lua gets angry

				return ""
				..(diags.error and diags.error.." " or "")
				..(diags.warning and diags.warning.." " or "")
				..(diags.info and diags.info.." " or "")
			end
		},
	},
}
