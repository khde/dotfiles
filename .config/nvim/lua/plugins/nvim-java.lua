return {
  {
    'nvim-java/nvim-java',
    
    config = function()
      require('java').setup()
      
      require('lspconfig').jdtls.setup({
        cmd = {
          "jdtls",
          "--jvm-arg=-javaagent:" .. vim.fn.expand("$MASON/share/jdtls/lombok.jar"),
        },
        
        root_dir = function(fname)
          return require('lspconfig').util.root_pattern("pom.xml", "build.gradle")(fname) or vim.fn.getcwd()
        end,
      })
    end
  },
}
