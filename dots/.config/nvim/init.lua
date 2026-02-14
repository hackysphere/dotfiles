-- this is the only thing before lazy.nvim because it contains options that will work if everything below fails
require("config.options")

vim.diagnostic.config({
	severity_sort = true,
	underline = true,
	virtual_lines = false,
	virtual_text = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = " ",
			[vim.diagnostic.severity.WARN] = " ",
			[vim.diagnostic.severity.INFO] = " ",
			[vim.diagnostic.severity.HINT] = "󰌶 ",
		},
	},
	update_in_insert = true, -- updates while changing file/in insert mode
})

require("config.lazy")
require("config.keymaps")
require("config.autocmds")

vim.filetype.add({
	extension = {
		caddy = 'caddy',
	},
	filename = {
		Caddyfile = 'caddy',
	},
})
