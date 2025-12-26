return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {},
	cmd = "Trouble",
	keys = {
		-- add win.position=right to a command to make window appear on the right side
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xs",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "[S]ymbols (Trouble)",
		},
		{
			"<leader>xi",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP [i]nfo (Trouble)",
		},
		{
			"<leader>xt",
			"<cmd>Trouble todo toggle<cr>",
			desc = "[T]ODOs (Trouble)",
		},
	},
}
