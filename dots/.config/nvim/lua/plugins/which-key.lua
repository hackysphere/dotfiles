return {
    "folke/which-key.nvim",
    dependencies = { "nvim-mini/mini.icons", "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
	spec = {
	    { "<leader>o", group = "[O]pen..." },
	    { "<leader>f", group = "[F]ind..." },
	    { "<leader>g", group = "[G]itHub..." },
        { "<leader>l", group = "[L]SP..." },
	},
    },
}
