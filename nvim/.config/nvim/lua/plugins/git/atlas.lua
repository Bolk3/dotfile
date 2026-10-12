return {
    "emrearmagan/atlas.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- optional but recommended
        "esmuellert/codediff.nvim", -- optional (PullRequest diff)
        "sindrets/diffview.nvim", -- optional; or "dlyongemallo/diffview-plus.nvim"
    },
    -- See Configuration below
    keys = {
        { "<leader>gp", "<cmd>Atlas pulls github<cr>", desc = "GitHub Pull Requests" },
        { "<leader>gi", "<cmd>Atlas issues github<cr>", desc = "GitHub Issues" },
    },   
    ---@type AtlasConfig
    opts = {
        providers = {
            github = {
            }
        },
        pulls = {
            ---@type AtlasGitHubPullsConfig
            github = {
                ---@type AtlasGitHubViewConfig[]
                views = {
                    {
                        name = "My PRs",
                        key = "1",
                        layout = "plain", -- "compact", "grouped", or "plain"
                        -- current_repo = true, -- Limit this view to the local repository.
                        search = "author:@me sort:updated-desc",
                    },
                    {
                        name = "Team",
                        key = "2",
                        layout = "compact",
                        search = "org:your-org sort:updated-desc",
                    },
                    {
                        name = "Repo",
                        key = "3",
                        layout = "grouped",
                        search = "repo:your-org/your-repo",
                    },
                },

                bookmarks = {
                    key   = "S",      -- default
                    label = "Search", -- default
                    items = {
                        ["Drafts"]           = "is:pr is:draft author:@me",
                        ["Recently merged"]  = "is:pr is:merged author:@me sort:updated-desc",
                        ["Review requested"] = "is:pr is:open review-requested:@me",
                    },
                },
            },
        },
    },
}
