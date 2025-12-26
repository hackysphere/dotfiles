-- this is the linter configuration, see mason.lua for the "general" config
-- DO NOT configure mason.nvim here, it is just a dependency

return {
	"mfussenegger/nvim-lint",
	dependencies = {
		"mason-org/mason.nvim",
	},
	events = { "BufReadPost", "BufWritePost", "InsertLeave" },
	config = function()
		vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
			desc = "Run linter(s) on saving file",
			group = vim.api.nvim_create_augroup("nvim-lint-autorun", { clear = true }),
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
