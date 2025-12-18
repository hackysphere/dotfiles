return {
	"folke/snacks.nvim",
	priority = 700, -- docs say 1000 but I don't think that's needed
	lazy = false,

	---@module 'snacks'
	---@type snacks.Config
	opts = {
		lazygit = { enabled = true, },
		github = { enabled = true, },
		picker = { enabled = true, },
		terminal = { enabled = true, },
		explorer = {
			replace_netrw = true,
			trash = true,
		},
		indent = {
			priority = 1,
			enabled = true,
			animate = {
				duration = {
					total = 100,
				},
			},
		},
		statuscolumn = {
			-- this *shouldn't* conflict with gitsigns...
			folds = {
				open = true,
				git_hl = false
			},
		},
	},
}
