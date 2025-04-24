local u = {}
local cmp_nvim_lsp = require("cmp_nvim_lsp")

u.on_attach = function(client, bufnr)
	-- Key mappings für LSP
	local buf_set_keymap = vim.api.nvim_buf_set_keymap
	local opts = { noremap = true, silent = true }
	buf_set_keymap(bufnr, "n", "gd", ":lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap(bufnr, "n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap(bufnr, "n", "gr", ":lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap(bufnr, "n", "gI", ":lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap(bufnr, "n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap(bufnr, "n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
end

u.capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
u.capabilities.textDocument.completion.completionItem.snippetSupport = true
u.capabilities.textDocument.completion.completionItem.resolveSupport = {
	properties = { "documentation", "detail", "additionalTextEdits" },
}

return u
