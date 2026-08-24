return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		gh = {
			-- config par défaut, tu peux laisser vide
		},
		picker = {
			sources = {
				gh_issue = {
					-- config du picker issues
				},
				gh_pr = {
					-- config du picker PR
				},
			},
		},
	},
	keys = {
		{ "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "GitHub Issues (open)" },
		{ "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
		{ "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "GitHub Pull Requests (open)" },
		{ "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "GitHub Pull Requests (all)" },
		{ "<leader>ga", function() Snacks.picker.gh_actions() end, desc = "GitHub Actions (PR courante)" },
		{ "<leader>gb", function() Snacks.gitbrowse() end, desc = "Open in browser" },
		{ "<leader>gB", function() Snacks.git.blame_line() end, desc = "Blame line" },
		{ "<leader>gs", function() Snacks.picker.git_status() end, desc = "Git Status" },
		{ "<leader>gd", function() Snacks.picker.git_diff() end, desc = "Git Diff (hunks)" },
		{ "<leader>gL", function() Snacks.picker.git_log() end, desc = "Git Log" },
		{ "<leader>gB", function() Snacks.picker.git_branches() end, desc = "Git Branches" },
	},
}
