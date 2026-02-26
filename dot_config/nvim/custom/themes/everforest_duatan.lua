-- Credits to original https://github.com/sainnhe/everforest
-- Deutan-friendly modification (greens intact, red shifted for contrast)

local M = {}

M.base_30 = {
  white         = "#D3C6AA", --  "#D3C6AA",
  darker_black  = "#272f35", --  "#272f35",
  black         = "#2b3339", --  "#2b3339",
  black2        = "#323a40", --  "#323a40",
  one_bg        = "#363e44", --  "#363e44",
  one_bg2       = "#3a4248", --  "#363e44",
  one_bg3       = "#444c52", --  "#3a4248",
  grey          = "#4e565c", --  "#4e565c",
  grey_fg       = "#5a6268", --  "#545c62",
  grey_fg2      = "#6c747a", --  "#626a70",
  light_grey    = "#7e868c", --  "#656d73
  red           = "#d65d5d", --  "#e67e80",
  baby_pink     = "#ea6962", --  "#ce8196",
  pink          = "#ff75a0", --  "#ff75a0",
  line          = "#3a4248", --  "#3a4248",
  green         = "#83c092", --  "#83c092",
  vibrant_green = "#b4e07c", --  "#a7c080",
  nord_blue     = "#89c2d9", --  "#78b4ac",
  blue          = "#7393b3", --  "#7393b3",
  yellow        = "#dbbc7f", --  "#dbbc7f",
  sun           = "#e6cfa4", --  "#d1b171",
  purple        = "#ecafcc", --  "#ecafcc",
  dark_purple   = "#c586a1", --  "#d699b6",
  teal          = "#8ddddd", --  "#69a59d",
  orange        = "#e69875", --  "#e69875",
  cyan          = "#95d1c9", --  "#95d1c9",
  statusline_bg = "#323c41", --  "#2e363c",
  lightbg       = "#3d454b", --  "#3d454b",
  pmenu_bg      = "#83c092", --  "#83c092",
  folder_bg     = "#7fbbb3", --  "#7393b3",
}

M.base_16 = {
  base00 = "#2b3339", -- "#2b3339",
  base01 = "#323c41", -- "#323c41", 
  base02 = "#3a4248", -- "#3a4248",
  base03 = "#444c52", -- "#424a50",
  base04 = "#5a6268", -- "#4a5258",
  base05 = "#D3C6AA", -- "#d3c6aa",
  base06 = "#b4e07c", -- "#ddd0b4",
  base07 = "#f4f0e6", -- "#e7dabe",
  base08 = "#d65d5d", -- "#7fbbb3",
  base09 = "#e69875", -- "#d699b6",
  base0A = "#dbbc7f", -- "#83c092",
  base0B = "#83c092", -- "#dbbc7f",
  base0C = "#95d1c9", -- "#e69875",
  base0D = "#7fbbb3", -- "#a7c080",
  base0E = "#d699b6", -- "#e67e80",
  base0F = "#ea6962", -- "#d699b6",
}

M.type = "dark"

M.polish_hl = {
  treesitter = {
    ["@tag"]           = { fg = M.base_30.orange },
    ["@tag.delimiter"] = { fg = M.base_30.green }, -- keep green here
  },
}

M = require("base46").override_theme(M, "everforest_deutan")

return M
