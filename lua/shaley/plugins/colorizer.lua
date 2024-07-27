return {
	"norcalli/nvim-colorizer.lua",
	opts = { "*" },
	config = function()
		local colorizer = require("colorizer")

		colorizer.setup({
			rgb_fn = true,
			hsl_fn = true,
			css = true,
			css_fn = true,
		})
	end,
}
