return {
    "nvim-mini/mini.nvim",
    dependencies = { "nvim-mini/mini.icons" },
    config = function()
        require("mini.pairs").setup()    -- automatically adds second pair of brackets (and has intelligent enter)
        require("mini.surround").setup() -- better selection/editing by using the s key
    end,
}
