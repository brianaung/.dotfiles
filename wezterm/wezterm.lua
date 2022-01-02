local w = require 'wezterm';

return {

  default_prog = { 'wsl.exe' },

  -- appearance
  color_scheme_dirs = { 'colors' },
  color_scheme = 'gruvbuddy',

  -- font_size = 13.0,
  font_locator = 'ConfigDirsOnly',
  font_dirs = { 'fonts' },
  font = w.font('agave Nerd Font Mono', { weight="Regular" }),

  use_fancy_tab_bar = false,

  tab_bar_at_bottom = true,

  window_padding = {
    bottom = "0cell",
  },

  -- key mappings
  keys = {
    -- pane management
    {key="w", mods="CTRL", action=w.action{CloseCurrentPane={confirm=true}}},
    {key="5", mods="CTRL", action=w.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="'", mods="CTRL", action=w.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="j", mods="CTRL", action=w.action{ActivatePaneDirection="Down"}},
    {key="k", mods="CTRL", action=w.action{ActivatePaneDirection="Up"}},
    {key="h", mods="CTRL", action=w.action{ActivatePaneDirection="Left"}},
    {key="l", mods="CTRL", action=w.action{ActivatePaneDirection="Right"}},
    {key="j", mods="CTRL|SHIFT|ALT", action=w.action{AdjustPaneSize={"Down", 1}}},
    {key="k", mods="CTRL|SHIFT|ALT", action=w.action{AdjustPaneSize={"Up", 1}}},
    {key="h", mods="CTRL|SHIFT|ALT", action=w.action{AdjustPaneSize={"Left", 1}}},
    {key="l", mods="CTRL|SHIFT|ALT", action=w.action{AdjustPaneSize={"Right", 1}}},
  },
}
