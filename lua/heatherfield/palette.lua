local config = require("heatherfield.config")
local utils = require("heatherfield.utils")

local palette = {
    black = "#06080A",
    bg0 = "#1A1B26",
    bg1 = "#1A1B2A",
    bg2 = "#B44B69",
    bg3 = "#353945",
    bg4 = "#4A5057",
    bg5 = "#282C34",
    highlight = "#1F202E",
    visual = "#42424D",
    bg_red = "#FE6D85",
    bg_green = "#98C379",
    bg_blue = "#9FBBF3",
    diff_red = "#773440",
    diff_green = "#587738",
    diff_blue = "#2A3A5A",
    diff_add = "#1E2326",
    diff_change = "#262B3D",
    diff_delete = "#281B27",
    diff_text = "#1C4474",
    fg = "#A0A8CD",
    red = "#EE6D85",
    orange = "#B77A57",
    yellow = "#D7A65F",
    green = "#96B582",
    blue = "#7199EE",
    cyan = "#07C2C5",
    purple = "#9962A7",
    purple2 = "#B893C2",
    purple3 = "#452A4B",
    purple4 = "#663e6f",
    grey = "#4A5057",
    pink = "#DD225A",
    none = "NONE",
}

local function gamma_correction(colors)
    local colors_corrected = {}
    for k, v in pairs(colors) do
        colors_corrected[k] = utils.color_gamma(v, config.gamma)
    end
    return colors_corrected
end

local custom_palette = type(config.custom_palette) == "function"
        and config.custom_palette(palette)
    or config.custom_palette

return gamma_correction(vim.tbl_extend("force", palette, custom_palette))
