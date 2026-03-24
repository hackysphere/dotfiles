return {
	"OXY2DEV/markview.nvim",
	lazy = false,
	dependencies = { "saghen/blink.cmp" }, -- Completion for `blink.cmp`

	---@module 'markview.nvim'
	---@type markview.config
	opts = {
		preview = {
			enable = false,
		},
	},
}
