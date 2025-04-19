return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
	},
	config = function()
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem toggle left<CR>", {})
        require("neo-tree").setup({
            window = {
                width = 35
            },
            filesystem = {
                bind_to_cwd = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                },
            },
        })
	end
}
