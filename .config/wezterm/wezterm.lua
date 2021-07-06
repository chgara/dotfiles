local wezterm = require 'wezterm'

return{
    -- color_scheme = "Banana Blueberry",
    -- color_scheme = "Overnight Slumber",
    -- color_scheme = "Vaughn",
    color_scheme = "WildCherry",
    window_background_opacity = 0.9,
    keys = {

        {key="h",mods="CTRL|ALT",action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        {key="1",mods="CTRL|ALT",action=wezterm.action{ActivateTab=0}},
        {key="2",mods="CTRL|ALT",action=wezterm.action{ActivateTab=1}},
        {key="3",mods="CTRL|ALT",action=wezterm.action{ActivateTab=2}},
        {key="4",mods="CTRL|ALT",action=wezterm.action{ActivateTab=3}},
        {key="5",mods="CTRL|ALT",action=wezterm.action{ActivateTab=4}},
        {key="v",mods="CTRL|ALT",action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}}
    },
    font_size = 10,
    window_padding = {
        left = 10,
        rigth = 10,
    },
    -- window_background_image = "../../wallpapers/sys.jpg"
}
