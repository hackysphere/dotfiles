vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	desc = "Highlight yanked text",
	-- create an autogroup so that this can't be "listened" to twice (in other words, make sure no double JS listeners get attached)
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

-- FIXME: this breaks with LSPs like yamlls and i don't want to deal with fixing it yet
-- local cursor_hl_aug = vim.api.nvim_create_augroup("lsp-cursor-highlight", {clear = true})
-- vim.api.nvim_create_autocmd({"CursorHold", "CursorHoldI"}, {
-- 	desc = "Highlight references under cursor with LSP",
-- 	group = cursor_hl_aug,
-- 	callback = function()
-- 		vim.lsp.buf.document_highlight()
-- 	end,
-- })
-- vim.api.nvim_create_autocmd({"CursorMoved", "CursorMovedI"}, {
-- 	desc = "Unhighlight LSP references when cursor moves",
-- 	group = cursor_hl_aug,
-- 	callback = function()
-- 		vim.lsp.buf.clear_references()
-- 	end,
-- })
