local present, catppuccin = pcall(require, "catppuccin")
if not present then return end

require("catppuccin").setup {
    flavour = "mocha",
    color_overrides = {
        mocha = {
            base = "#000000",
        },
    },
    integrations = {
        nvimtree = true,
    },
    highlight_overrides = {
        mocha = function(mocha)
            return {
                NvimTreeNormal = { bg = mocha.none },
            }
        end,
    },
}

vim.cmd.colorscheme "catppuccin"
