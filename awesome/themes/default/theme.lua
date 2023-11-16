---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local gears = require("gears")

local gfs = require("gears.filesystem")
local themes_path = "~/.config/awesome/themes/"

local theme = {}

-- Colors
local color = {
    background_dark      = "#1a1b26",
    background_lighter   = "#24283b",
    background_morelight = "#36424c",
    white                = "#a9b1d6",
    blueish_white        = "#89b4fa",
    red                  = "#F7768E",
    green                = "#73daca",
    yellow               = "#E0AF68",
    blue                 = "#7AA2F7",
    magenta              = "#BB9AF7",
    cyan                 = "#7dcfff",
}

-- gaps
theme.useless_gap = dpi(2)

theme.font                                            = "JetBrainsMono Nerdfont 11"
theme.fg                                              = color.white
theme.bg                                              = "#24283b"
theme.bg_normal                                       = "#24283b"
theme.fg_normal                                       = color.white
theme.bg_focus                                        = "#535d6c"
theme.fg_focus                                        = color.white
theme.border_width                                    = 1
theme.border_radius                                   = 5
theme.border_normal                                   = "#000000"
theme.border_focus                                    = "#535d6c"

--Colorscheme
theme.background_dark                                 = "#1a1b26"
theme.background_lighter                              = "#24283b"
theme.white                                           = "#a9b1d6"
theme.blueish_white                                   = "#89b4fa"
theme.red                                             = "#F7768E"
theme.green                                           = "#73daca"
theme.yellow                                          = "#E0AF68"
theme.blue                                            = "#7AA2F7"
theme.magenta                                         = "#BB9AF7"
theme.cyan                                            = "#7dcfff"

theme.bg_systray                                      = color.background_lighter

-- Tag list
theme.taglist_bg_empty            = color.background_lighter
theme.taglist_fg_empty            = color.white
theme.taglist_bg_occupied         = color.background_dark
theme.taglist_fg_occupied         = color.white
theme.taglist_bg_focus            = color.background_morelight
theme.taglist_fg_focus            = color.cyan
theme.taglist_fg_urgent           = color.yellow
-- Other Taglist settings
theme.taglist_spacing             = 4
theme.taglist_shape_border_width  = 1
theme.taglist_shape_border_color  = color.background_dark
theme.taglist_shape_border_color_focus = color.cyan
theme.taglist_shape_border_color_empty = color.background_lighter
theme.taglist_shape_border_radius = 40

theme.taglist_shape = function(cr, w, h)
    return gears.shape.rounded_rect(cr, w, h, theme.border_radius)
end

theme.tasklist_shape = function(cr, w, h)
    return gears.shape.rounded_rect(cr, w, h, theme.border_radius)
end

-- tasklist
theme.tasklist_fg_focus                      = color.cyan
theme.tasklist_bg_minimize                   = color.background_lighter
theme.tasklist_bg_focus                      = color.background_morelight
theme.tasklist_shape_border_width            = 1
theme.tasklist_shape_border_color            = color.background_lighter
theme.tasklist_shape_border_color_focus      = color.cyan
theme.tasklist_shape_border_color_minimized  = color.magenta
theme.tasklist_shape_border_color_urgent     = color.yellow
theme.tasklist_disable_icon                  = true

-- notifications
theme.notification_font                 = "JetBrainsMono Nerdfont 11"
theme.notification_fg                   = "#a9b1d6"
theme.notification_position             = 'top_right'
theme.notification_margin               = dpi(10)
theme.notification_border_width         = dpi(0)
theme.notification_spacing              = dpi(15)
theme.notification_icon_resize_strategy = 'center'
theme.notification_icon_size            = dpi(300)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."default/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."default/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."default/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."default/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."default/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."default/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."default/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."default/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."default/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."default/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."default/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."default/background.jpg"

-- Layout icons
theme.layout_fairh = themes_path.."default/layouts/fairhw.png"
theme.layout_fairv = themes_path.."default/layouts/fairvw.png"
theme.layout_floating  = themes_path.."default/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."default/layouts/magnifierw.png"
theme.layout_max = themes_path.."default/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."default/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."default/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."default/layouts/tileleftw.png"
theme.layout_tile = themes_path.."default/layouts/tilew.png"
theme.layout_tiletop = themes_path.."default/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

return theme

