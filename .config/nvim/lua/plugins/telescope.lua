return {
	"nvim-telescope/telescope.nvim",
	cmd = "Telescope",
	lazy = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		require("telescope").setup({
			pickers = {
				colorscheme = {
					enable_preview = true,
				},
			},
		})

		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
	end,
}
