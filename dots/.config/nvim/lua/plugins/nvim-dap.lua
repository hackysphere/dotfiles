-- this is the DAP configuration, see mason.lua for the "general" config
-- DO NOT configure mason.nvim here, it is just a dependency

return {
	"jay-babu/mason-nvim-dap.nvim",
	dependencies = {
		"williamboman/mason.nvim",
		{
			"mfussenegger/nvim-dap",
			config = function()
				vim.fn.sign_define("DapBreakpoint", { text = " ", texthl = "DiagnosticSignError" })
				vim.fn.sign_define("DapBreakpointCondition", { text = " ", texthl = "DiagnosticSignError" })
				vim.fn.sign_define("DapLogPoint", { text = " ", texthl = "DiagnosticSignWarn" })
				vim.fn.sign_define("DapStopped", { text = " ", texthl = "DiagnosticSignOk" })
				vim.fn.sign_define("DapBreakpointRejected", { text = " ", texthl = "DiagnosticSignInfo" })
			end,
		},
		{
			"theHamsta/nvim-dap-virtual-text",
			dependencies = { "nvim-treesitter/nvim-treesitter" }, -- may not actually be a dependency, see github README
			opts = {},
		},
		{
			"igorlfs/nvim-dap-view",
			---@module 'dap-view'
			---@type dapview.Config
			opts = {
				winbar = {
					sections = { "watches", "scopes", "exceptions", "breakpoints", "threads", "repl", "console" },
					controls = { enabled = true },
				},
				auto_toggle = true,
			},
		},
		{
			"mfussenegger/nvim-dap-python",
			config = function()
				local python_path = vim.fs.joinpath(vim.fn.stdpath("data"), "mason/packages/debugpy/venv/bin/python")
				require("dap-python").setup(python_path)
			end,
		},
	},
	opts = {
		handlers = {
			python = function() end,
		},
	},
}
