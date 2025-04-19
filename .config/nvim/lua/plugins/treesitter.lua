return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
			ensure_installed = {'asm', 'bash', 'c', 'cmake', 'cpp', 'css', 'csv', 'disassembly',
								'diff', 'dockerfile', 'gitignore', 'java', 'javadoc', 'json', 
								'lua', 'make', 'objdump', 'python', 'requirements', 'regex', 
								'sql', 'udev', 'xml', 'html', 'http'},
			highlight = {enable = true},
            indent = {enable = true},
        })
    end
}
