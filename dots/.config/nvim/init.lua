-- this is the only thing before lazy.nvim because it contains options that will work if everything below fails
require("config.options")

vim.api.nvim_create_autocmd({'TextYankPost'}, {
    desc = "Highlight yanked text",
    -- create an autogroup so that this can't be "listened" to twice (in other words, make sure no double JS listeners get attached)
    group = vim.api.nvim_create_augroup("highlight-yank", {clear = true}),
    callback = function(event)
	vim.highlight.on_yank()
    end,
})

require("config.lazy")
require("config.keymaps")
