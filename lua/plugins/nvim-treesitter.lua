return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "cpp", "c_sharp", "java", "rust", "go", "html", "css", "javascript", "typescript", "python", "julia", "ruby", "lua", "eex", "elixir", "erlang", "heex" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
