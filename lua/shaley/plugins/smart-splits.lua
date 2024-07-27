return {
	"mrjones2014/smart-splits.nvim",
	config = function()
		local smartsplits = require("smart-splits")
		vim.notify = require("notify")

		smartsplits.setup({
			resize_mode = {
				silent = true,
				hooks = {
					on_enter = function()
						vim.notify("Entering split resize mode")
					end,
					on_leave = function()
						vim.notify("Exiting split resize mode")
					end,
				},
			},
			cursor_follows_swapped_bufs = true,
		})

		local keymap = vim.keymap

		keymap.set("n", "<leader>wr", "<cmd>SmartResizeMode<CR>", { desc = "Split resize mode" })
		keymap.set("n", "<leader>wH", "<cmd>SmartSwapLeft<CR>", { desc = "Swap with left split" })
		keymap.set("n", "<leader>wL", "<cmd>SmartSwapRight<CR>", { desc = "Swap with right split" })
		keymap.set("n", "<leader>wJ", "<cmd>SmartSwapDown<CR>", { desc = "Swap with below split" })
		keymap.set("n", "<leader>wK", "<cmd>SmartSwapUp<CR>", { desc = "Swap with above split" })
	end,
}
