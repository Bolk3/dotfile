vim.api.nvim_set_keymap("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", {desc = "generate docs", noremap = true, silent = true})
