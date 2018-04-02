---------------------------
-- Solarized awesome theme --
---------------------------
local shape = require("gears.shape")
local surface = require("gears.surface")
local beautiful = require("beautiful")
local theme_assets = beautiful.theme_assets
local xresources = beautiful.xresources
local dpi = xresources.apply_dpi
local cur_theme_path = beautiful.theme_path

local theme = {}
theme.font = "Ubuntu 10"

theme.colors = {}
theme.colors.base3   = "#002b36ff"
theme.colors.base2   = "#073642ff"
theme.colors.base1   = "#586e75ff"
theme.colors.base0   = "#657b83ff"
theme.colors.base00  = "#839496ff"
theme.colors.base01  = "#93a1a1ff"
theme.colors.base02  = "#eee8d5ff"
theme.colors.base03  = "#fdf6e3ff"
theme.colors.yellow  = "#b58900ff"
theme.colors.orange  = "#cb4b16ff"
theme.colors.red     = "#dc322fff"
theme.colors.magenta = "#d33682ff"
theme.colors.violet  = "#6c71c4ff"
theme.colors.blue    = "#268bd2ff"
theme.colors.cyan    = "#2aa198ff"
theme.colors.green   = "#859900ff"

theme.wallpaper = cur_theme_path.."background.png"

-- {{{ Colors
theme.fg_normal  = theme.colors.base02 -- "#eee8d5ff"
theme.fg_focus   = theme.colors.base03 -- "#fdf6e3ff"
theme.fg_urgent  = theme.colors.base3 -- "#002b36ff"

theme.bg_normal  = theme.colors.base3 -- "#002b36ff"
theme.bg_systray = theme.bg_normal
theme.bg_focus   = theme.colors.base1 -- "#586e75ff"
theme.bg_urgent  = theme.colors.red
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.colors.base1 -- "#586e75ff"
theme.titlebar_bg_normal = theme.colors.base2 -- "#002b36ff"
-- }}}

-- {{{ Taglist
theme.taglist_fg_focus = theme.fg_focus
theme.taglist_fg_focus = theme.bg_focus
-- }}}

-- {{{ Borders
theme.border_width  = dpi(2)
theme.useless_gap   = 0
theme.border_normal = theme.colors.base2 -- "#002b36ff"
theme.border_focus  = theme.colors.green
theme.border_marked = theme.colors.red
-- }}}

-- {{{ Menu
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)
-- }}}

-- {{{ Notifications
theme.notification_font = "Ubuntu 14"
theme.notification_bg = theme.colors.base3 -- "#002b36ff"
theme.notification_fg = theme.colors.base03 -- "#fdf6e3ff"
theme.notification_border_width	= dpi(2)
theme.notification_border_color	= theme.colors.green
theme.notification_shape = function(cr, width, height)
   shape.partially_rounded_rect(cr, width, height, true, false, true, true, 10)
end
-- }}}

-- {{{ Tooltips
theme.tooltip_border_color = theme.colors.green
theme.tooltip_bg = theme.colors.base3 -- "#002b36ff"
theme.tooltip_fg = theme.colors.base03 -- "#fdf6e3ff"
theme.tooltip_font = "Ubuntu 10"
theme.tooltip_border_width = dpi(1)
-- }}}

-- {{{ Titlebar icons
theme.titlebar_close_button_normal = cur_theme_path.."titlebar/close_normal.png"
theme.titlebar_close_button_focus  = cur_theme_path.."titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = cur_theme_path.."titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = cur_theme_path.."titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = cur_theme_path.."titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = cur_theme_path.."titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = cur_theme_path.."titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = cur_theme_path.."titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = cur_theme_path.."titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = cur_theme_path.."titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = cur_theme_path.."titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = cur_theme_path.."titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = cur_theme_path.."titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = cur_theme_path.."titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = cur_theme_path.."titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = cur_theme_path.."titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = cur_theme_path.."titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = cur_theme_path.."titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = cur_theme_path.."titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = cur_theme_path.."titlebar/maximized_focus_active.png"
-- }}}


-- {{{ Taglist "squares"
local taglist_square_size = dpi(5)
theme.taglist_squares_sel = surface.load_from_shape(taglist_square_size, taglist_square_size, function(cr, width, height)
    shape.transform(shape.pie):translate(width*-1, height*-1)(cr, width*2, height*2)
end, theme.fg_normal)
theme.taglist_squares_unsel = surface.load_from_shape(taglist_square_size, taglist_square_size, function(cr, width, height)
    shape.transform(shape.arc):translate(width*-1, height*-1)(cr, width*2, height*2, dpi(1))
end, theme.fg_normal)
-- }}}

-- {{{ Layout icons
theme.layout_cornerne = cur_theme_path.."layouts/cornerne.png"
theme.layout_cornernw = cur_theme_path.."layouts/cornernw.png"
theme.layout_cornerse = cur_theme_path.."layouts/cornerse.png"
theme.layout_cornersw = cur_theme_path.."layouts/cornersw.png"
theme.layout_dwindle = cur_theme_path.."layouts/dwindle.png"
theme.layout_fairh = cur_theme_path.."layouts/fairh.png"
theme.layout_fairv = cur_theme_path.."layouts/fairv.png"
theme.layout_floating  = cur_theme_path.."layouts/floating.png"
theme.layout_fullscreen = cur_theme_path.."layouts/fullscreen.png"
theme.layout_magnifier = cur_theme_path.."layouts/magnifier.png"
theme.layout_max = cur_theme_path.."layouts/max.png"
theme.layout_spiral  = cur_theme_path.."layouts/spiral.png"
theme.layout_tile = cur_theme_path.."layouts/tile.png"
theme.layout_tilebottom = cur_theme_path.."layouts/tilebottom.png"
theme.layout_tileleft   = cur_theme_path.."layouts/tileleft.png"
theme.layout_tiletop = cur_theme_path.."layouts/tiletop.png"
-- }}}

-- {{{ Misc icons
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)
theme.menu_submenu_icon = cur_theme_path.."submenu.png"
-- }}}

-- {{ Calendar
theme.calendar_style = {}
theme.calendar_style.padding = dpi(10)
theme.calendar_focus_border_color = theme.colors.green
theme.calendar_font = "Ubuntu 14"
-- }}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
