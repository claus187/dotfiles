return {
	"neovim/nvim-lspconfig",
	dependencies = { "hrsh7th/cmp-nvim-lsp", "ray-x/lsp_signature.nvim" },
	config = function()
		local lspconfig = require("lspconfig")
		local utils = require("utils.lsputils")

		local servers = {
			lua_ls = {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			},
			clangd = {
				filetypes = { "c", "cpp", "objc", "objcpp" },
				cmd = {
					"clangd",
					"--background-index",
					"--pch-storage=memory",
					"--all-scopes-completion",
					"--pretty",
					"--header-insertion=never",
					"-j=4",
					"--header-insertion-decorators",
					"--function-arg-placeholders",
					"--completion-style=detailed",
					"--compile_args_from=-IC:/raylib/raylib/src",
				},
				root_dir = lspconfig.util.root_pattern("src"),
				init_option = { fallbackFlags = { "-std=c++2a", "-IC:/raylib/raylib/src" } },
			},
			pyright = {},
		}

		for server, config in pairs(servers) do
			config.on_attach = utils.on_attach
			config.capabilities = utils.capabilities
			lspconfig[server].setup(config)
		end
	end,
}
