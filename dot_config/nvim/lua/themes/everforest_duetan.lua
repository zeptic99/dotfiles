-- Everforest-Deutan (colorblind-friendly)
-- Place this in: ~/.config/nvim/lua/base46/themes/everforest_deutan.lua

local M = {}

M.base_30 = {
  white       = "#e0d7c2",
  darker_black= "#232a2e",
  black       = "#2b3339", -- background
  black2      = "#323c41",
  one_bg      = "#3a4248",
  one_bg2     = "#444c52",
  one_bg3     = "#4e565c",
  grey        = "#5a6268",
  grey_fg     = "#6c747a",
  grey_fg2    = "#7e868c",
  light_grey  = "#90989e",
  red         = "#d65d5d",
  baby_pink   = "#ea6962",
  pink        = "#e2a6c8",
  line        = "#343c40",
  green       = "#80c0c0", -- swapped to cyan for Deutan
  vibrant_green = "#89dceb",
  nord_blue   = "#89c2d9",
  blue        = "#7fbbb3",
  yellow      = "#dbbc7f",
  sun         = "#e6cfa4",
  purple      = "#d699b6",
  teal        = "#8ddddd",
  orange      = "#e78a4e",
  cyan        = "#80c0c0",
  statusline_bg = "#323c41",
  lightbg     = "#3c444a",
  pmenu_bg    = "#80c0c0",
  folder_bg   = "#7fbbb3",
}

M.base_16 = {
  base00 = "#2b3339", -- background
  base01 = "#323c41",
  base02 = "#3a4248",
  base03 = "#444c52",
  base04 = "#5a6268",
  base05 = "#e0d7c2", -- foreground
  base06 = "#e6cfa4",
  base07 = "#f4f0e6",
  base08 = "#d65d5d", -- red
  base09 = "#e78a4e", -- orange
  base0A = "#dbbc7f", -- yellow
  base0B = "#80c0c0", -- cyan-as-green
  base0C = "#8ddddd", -- cyan
  base0D = "#7fbbb3", -- blue
  base0E = "#d699b6", -- purple
  base0F = "#ea6962", -- pink/red variant
}

M.type = "dark"

return M
