local env = require("utils.env")
vim.g.user = env.get("USER42", "username")
vim.g.mail = env.get("MAIL42", "your@email.com")

return {
    "Diogo-ss/42-header.nvim",
    cmd = { "Stdheader" },
    keys = { "<F1>" },
    opts = {
        default_map = true,
        auto_update = true,
    },
    config = function(_, opts)
        require("42header").setup(opts)
    end,
}
