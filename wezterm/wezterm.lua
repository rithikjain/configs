-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = 'Tokyo Night'

-- my coolnight colorscheme
config.colors = {
  foreground = "#CBE0F0",
  background = "#000000",
  cursor_bg = "#47FF9C",
  cursor_border = "#47FF9C",
  cursor_fg = "#011423",
  selection_bg = "#033259",
  selection_fg = "#CBE0F0",
  ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
  brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.5

config.enable_tab_bar = false
config.initial_rows = 40
config.initial_cols = 120

config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.95
-- config.macos_window_background_blur = 20

config.background = {
  {
    source = {
      File = wezterm.config_dir .. "/bg/bg14.png",
    },
    hsb = { brightness = 0.015 },
    -- opacity = 1,
  },
  -- {
  --   source = {
  --     Color = '#282C34'
  --   },
  --   width = "100%",
  --   height = "100%",
  --   opacity = 0.97,
  -- },
}

-- and finally, return the configuration to wezterm
return config
