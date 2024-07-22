return {
	"smoka7/hop.nvim",
	version = "*",
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},
	config = function()
		local hop = require("hop")

		hop.setup({
			multi_windows = true,
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>jj", "<cmd>HopChar1<CR>", { desc = "Hop to character" })
	end,
}
