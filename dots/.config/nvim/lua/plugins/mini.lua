return {
    "nvim-mini/mini.nvim",
    config = function()
        require("mini.pairs").setup()    -- automatically adds second pair of brackets (and has intelligent enter)
        require("mini.surround").setup() -- better selection/editing by using the s[adr] key
        require("mini.align").setup()    -- nice alignment of content, use gA (ga for no preview)
        require("mini.move").setup()     -- easy movement of lines with ALT-[hjkl]
    end,
}
