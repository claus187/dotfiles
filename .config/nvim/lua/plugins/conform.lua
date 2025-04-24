return {
	"stevearc/conform.nvim",
	config = function()
		local config_path = vim.fn.stdpath("config")
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				c = { "clang_format" },
			},
			formatters = {
				clang_format = {
					command = "clang-format",
					args = {
						"-style=file:" .. config_path .. "/.clang-format",
						"-assume-filename=%:p",
					},
					stdin = true,
				},
			},
			format_on_save = {
				lsp_format = "fallback",
				timeout_ms = 500,
			},
		})
	end,
}
