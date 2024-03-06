return {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        return {
            require("everforest").setup({
                background = "hard",
                transparent_background_level = 0,
                italics = false,
                disable_italic_comments = false,
                sign_column_background = "none", --grey
                ui_contrast = "low", --high
                dim_inactive_windows = true,
                diagnostic_text_highlight = false,
                diagnostic_virtual_text = "coloured", --grey
                diagnostic_line_highlight = true,
                spell_foreground = false,
                show_eob = true,
                float_style = "bright", -- dark
            })
        }
    end,
}
