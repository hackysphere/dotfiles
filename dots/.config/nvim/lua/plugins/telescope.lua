-- note to self: telescope seems to not be the greatest option anymore? consider checking out mini.* (forgot name) or folke/snacks.nvim

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",
	{ 'nvim-telescope/telescope-fzf-native.nvim',
	    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release --target install' },
	'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function ()
	require("telescope").setup({
	    defaults = {
		mappings = {
		    i = {
			["<C-h>"] = "which_key",
		    },
		},
		extensions = {
		    require("telescope.themes").get_dropdown(),
		},
	    },
	})

	pcall(require("telescope").load_extension("fzf"))
	pcall(require("telescope").load_extension("ui-select"))
    end,
}
