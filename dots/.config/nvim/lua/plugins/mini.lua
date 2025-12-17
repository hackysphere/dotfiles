return {
    "nvim-mini/mini.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    config = function ()
	require("mini.pairs").setup()
    end,
}
