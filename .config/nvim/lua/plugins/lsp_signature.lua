return {
	"ray-x/lsp_signature.nvim",
	event = "InsertEnter",
	config = function()
		require("lsp_signature").setup({
			bind = true,
			handler_opts = {
				border = "rounded", --double, rounded, single, shadow
			},
			transparency = nil,
			hint_prefix = "",
			floating_window = false,
		})
	end,
}
