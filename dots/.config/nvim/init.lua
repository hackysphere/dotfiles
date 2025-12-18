-- this is the only thing before lazy.nvim because it contains options that will work if everything below fails
require("config.options")

vim.api.nvim_create_autocmd({'TextYankPost'}, {
    desc = "Highlight yanked text",
    -- create an autogroup so that this can't be "listened" to twice (in other words, make sure no double JS listeners get attached)
    group = vim.api.nvim_create_augroup("highlight-yank", {clear = true}),
    callback = function()
        vim.hl.on_yank()
    end,
})

vim.diagnostic.config({
    severity_sort = true,
    underline = true,
    virtual_lines = false,
    virtual_text = true,
    float = {
        border = "rounded",
        source = "if_many",
    },
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = " ",
            [vim.diagnostic.severity.WARN] = " ",
            [vim.diagnostic.severity.INFO] = " ",
            [vim.diagnostic.severity.HINT] = "󰌶 ",
        }
    },
    update_in_insert = true,
})

require("config.lazy")
require("config.keymaps")
