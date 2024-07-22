return {
	"FabijanZulj/blame.nvim",
	config = function()
		require("blame").setup()

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>gb", "<cmd>BlameToggle<CR>", { desc = "Toggle git blame" }) -- toggle file explorer
	end,
}
