return {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	config = function ()
		require("nvim-treesitter").install {
			'c',
		}
	end
}
