return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			clangd = {},
			rust_analyzer = {},
			pylsp = {},
			emmylua_ls = {
				on_init = function (client)
					if client.workspace_folders then
						local path = client.workspace_folders[1].name
						if
							path ~= vim.fn.stdpath('config')
							and (vim.uv.fs_stat(path .. '/.emmyrc.json') or vim.uv.fs_stat(path .. '/.luarc.json'))
						then
							client.config.settings = {}
						end
					end
				end,
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						diagnostics = { globals = { "vim" } },
						workspace = {
							library = {
								vim.env.VIMRUNTIME,
								vim.api.nvim_get_runtime_file("lua/lspconfig", false)[1],
							},
						},
					},
				},
			},
		},
	},
	config = function (_, opts)
		for server, config in pairs(opts.servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			vim.lsp.config(server, config)
			vim.lsp.enable(server)
		end
	end
}
