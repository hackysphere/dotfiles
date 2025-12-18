return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	---@module 'blink.cmp'
	---@type blink.cmp.Config
	opts = {
		keymap = { preset = "default" },
		completion = {
			menu = {
				auto_show = true,
			},
			documentation = {
				auto_show = true,
			},
		},
	},
}
