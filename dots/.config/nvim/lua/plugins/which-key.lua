return {
	"folke/which-key.nvim",
	dependencies = { "nvim-mini/mini.icons", "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		spec = {
			{ "<leader>o", group = "[O]pen..." },
			{ "<leader>f", group = "[F]ind..." },
			{ "<leader>fl", group = "Find [L]SP..." },
			{ "<leader>g", group = "[G]itHub..." },
			{ "<leader>l", group = "[L]SP..." },
			{ "<leader>d", group = "[D]iagnostics..." },
			{ "<leader>x", group = "Trouble..." },
			{ "<leader>s", group = "[S]ession..." },
			{ "<leader>r", group = "[R]un tool..." },
			{ "<leader>b", group = "De[b]ug..." },
		},
	},
}
