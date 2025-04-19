return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup({
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown({}),
                },
            },
        })
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<C-s>", builtin.find_files, {})
    end,
}
