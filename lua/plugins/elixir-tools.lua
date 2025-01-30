return {
    "elixir-tools/elixir-tools.nvim",
    version = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local elixir = require("elixir")
        local elixirls = require("elixir.elixirls")

        elixir.setup {
            nextls = { enable = false },
            elixirls = {
                enable = true,
                settings = elixirls.settings {
                    dialyzerEnable = false,
                    enableTestLenses = false,
                }
            },
            projectionist = { enable = true }
        }
    end
}
