return {
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons'},
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = "catppuccin-macchiato",
                section_separators = { left = '|', right = '|' },
                component_separators = { left = '|', right = '|' },
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            }
        }
	end,
}
