return {
	-- this plugin adds nvim-specific autocompletion to all un-LSPd lua files for some reason, need to fix
	"folke/lazydev.nvim",
	ft = "lua",
	opts = {
		library = {
			-- See the configuration section for more details
			-- Load luvit types when the `vim.uv` word is found
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
		},
	},
}
