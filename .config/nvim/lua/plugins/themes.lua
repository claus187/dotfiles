local tp_bg = false

return {
	{
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("bamboo").setup({
				code_style = {
					comments = { italic = false },
					conditionals = { italic = false },
					namespaces = { italic = false },
					parameters = { italic = false },
				},
			})
			require("bamboo").load()
		end,
	},
	{
		"datsfilipe/vesper.nvim",
		config = function()
			require("vesper").setup({
				transparent = false,
				italics = {
					comments = false,
					keywords = false,
					functions = false,
					strings = false,
					variables = false,
				},
			})
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			require("rose-pine").setup({
				styles = {
					italic = false,
					transparent = tp_bg,
				},
			})
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				no_italic = false,
				transparent_background = tp_bg,
			})
		end,
	},
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_transparent_background = tp_bg
		end,
	},
	{
		"folke/tokyonight.nvim",
		config = function()
			require("tokyonight").setup({
				style = "storm",
				transparent = tp_bg,
			})
		end,
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = tp_bg,
				},
			})
		end,
	},
	"Mofiqul/dracula.nvim",
	"joshdick/onedark.vim",
	"rmehri01/onenord.nvim",
	"ayu-theme/ayu-vim",
	"nyoom-engineering/oxocarbon.nvim",
}
