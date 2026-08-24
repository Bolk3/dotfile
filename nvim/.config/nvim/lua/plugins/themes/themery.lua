return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			globalBefore = [[
				vim.g.omnitheme_transparent = false
			]],
			themes = {
				{ name = "citruszest", colorscheme = "citruszest" },
				{
					name = "citruszest (transparent)",
					colorscheme = "citruszest",
					before = [[
						require("citruszest").setup({
							option = {
								transparent = true
							}
						})
					]]
				},
				{ name = "eldritch", colorscheme = "eldritch" },
				{
					name = "eldritch (transparent)",
					colorscheme = "eldritch",
					before = [[
						require("eldritch").setup({
							transparent = true,
						})
					]]
				},
				{ name = "oldworld", colorscheme = "oldworld" },
				{
					name = "vscode light",
					colorscheme = "vscode",
					before = [[
						require("vscode").load('light')
					]]
				},
				{
					name = "vscode dark",
					colorscheme = "vscode",
					before = [[
						require("vscode").load('dark')
					]]
				},
				{ name = "blackout", colorscheme = "blackout" },
				{ name = "moss", colorscheme = "moss" },
				{ name = "dusk", colorscheme = "dusk" },
				{ name = "frost", colorscheme = "frost" },
				{ name = "blossom", colorscheme = "blossom" },
				{ name = "ember", colorscheme = "ember" },
				{ name = "velvet", colorscheme = "velvet" },
			}
		})
	end
}
