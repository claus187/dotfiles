return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"jayp0521/mason-null-ls.nvim",
		"nvimtools/none-ls.nvim",
	},
	config = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "clangd", "pyright" },
			automatic_installation = true,
		})
		require("mason-null-ls").setup({
			ensure_installed = { "stylua", "black", "clang-format" },
			automatic_installation = true,
		})
	end,
}
