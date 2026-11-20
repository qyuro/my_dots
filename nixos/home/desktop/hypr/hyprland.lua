-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
-- HYPRLAND CONFIG (HY3 LAYOUT)                         --
-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --

------------------
---- MONITORS ----
------------------
hl.monitor({
    output   = "eDP-1",
    mode     = "2880x1800@120.000Hz",
    position = "0x0",
    scale    = "2",
})

---------------------
---- MY PROGRAMS ----
---------------------
local terminal    = "kitty"
local fileManager = "nautilus"
-- local menu        = "noctalia msg panel-toggle launcher"
local menu = "qs ipc -c amane call amane toggleLauncher"
local lock = "qs ipc -c amane call amane lock"
local volume = "qs ipc -c amane call amane toggleVolume"
-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function () 
  hl.exec_cmd("awww-daemon")
  hl.exec_cmd("qs -c amane")
  hl.exec_cmd("qs ipc -c amane call lock")
  -- hl.exec_cmd("noctalia")
  -- hl.exec_cmd("noctalia msg session lock")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("CLUTTER_BACKEND", "wayland") 
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
---TEST
hl.env("LD_LIBRARY_PATH","/run/current-system/sw/lib")
-----------------------
---- LOOK AND FEEL ----
-----------------------
hl.config({
    general = {
        gaps_in  = 10,
        gaps_out = 25,
        border_size = 0,
        col = {
            active_border   = { colors = {"rgb(aaaaaa)", "rgb(a7a7a7)"}, angle = 45 },
            inactive_border = "rgb(111111)",
        },
        resize_on_border = false,
        allow_tearing = true,
        layout = "hy3", -- <-- ИЗМЕНЕНО: включаем hy3
    },

    decoration = {
        rounding       = 20,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 0.7,
        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },
        blur = {
            enabled   = true,
            size      = 4,
            passes    = 4,
            -- vibrancy  = 0.1696,
            vibrancy = 0.3,
            new_optimizations = true,
            xray = true,
            noise = 0.02,
            variant = fluid_jar,
        },
    },

    animations = {
        enabled = true,
    },
    render = {
        cm_enabled = true,
        cm_auto_hdr = 1,
        cm_sdr_eotf = "srgb",
        direct_scanout = 1,
    },
    xwayland = {
        -- force_zero_scaling = true,
    },
    -- Настройки hyprexpo оставляем без изменений
    -- plugin = {
    --   -- hyprexpo = {
    --         columns = 5,
    --         rows    = 0,
    --         gaps_in = 5,
    --         gaps_out = 20,
    --         bg_col  = "rgb(111111)",
    --         workspace_method = "center current",
    --         overview_mode = "grid",
    --         dynamic_grid = 1,
    --         fill_gaps    = 0,
    --         mru_sort     = 0,
    --         bg_image      = "/home/hxteher/Wall/wallpaperflare.com_wallpaper.jpg",
    --         bg_image_fit  = "cover",
    --         bg_image_blur = 6,
    --         animate_entry = 1,
    --         keynav_enable       = 1,
    --         number_key_mode     = "index",
    --         keynav_wrap_h       = 1,
    --         keynav_wrap_v       = 1,
    --         -- keynav_read_order    = 0,
    --         label_enable           = 0,
    --         show_workspace_numbers = 0,
    --         selection_label_enable = 0,
    --         border_width         = 2,
    --         border_color         = "rgb(111111)",
    --         border_color_current = "rgb(aaaaaa)",
    --         border_color_focus   = "rgb(ffffff)",
    --         border_color_hover   = "rgb(a7a7a7)",
    --         tile_rounding        = 10,
    --         cancel_key  = "escape",
    --         show_cursor = 1,
    --     },
    -- },
})

-- Кривые и анимации (оставляем без изменений)
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })
hl.curve("easy",           { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global",        enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border",        enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows",       enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn",     enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut",    enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn",        enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut",       enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade",          enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers",        enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn",      enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut",     enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces",    enabled = true,  speed = 3.5, bezier = "easeInOutCubic", style = "slidevert" })
hl.animation({ leaf = "workspacesIn",  enabled = true,  speed = 3.5, bezier = "easeInOutCubic", style = "slidevert" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 3.5, bezier = "easeInOutCubic", style = "slidevert" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })
hl.animation({ leaf = "windowsMove",   enabled = true,  speed = 5,    spring = "easy" })

-- hy3 не использует настройки dwindle/master/scrolling, их можно убрать.
-- Оставляем только miscellaneous.

----------------
----  MISC  ----
----------------
hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo   = true,
        vrr = 2,
    },
})

---------------
---- INPUT ----
---------------
hl.config({
    input = {
        kb_layout  = "us,ru",
        kb_variant = "",
        kb_model   = "",
        kb_options = "grp:caps_toggle",
        kb_rules   = "",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = false,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})

---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER"
--bind like i3/sway
local hy3 = hl.plugin.hy3

-- Базовые приложения
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
-- hl.bind(mainMod .. " + Q", hl.dsp.window.close()) -- В hy3 close работает как обычно
local closeWindowBind = hl.bind(mainMod .. " + Q", hy3.kill_active())


hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + X", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("hyprshot -m region -z --clipboard-only"))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(lock))
-- === HY3: НАВИГАЦИЯ И ПЕРЕМЕЩЕНИЕ ===
-- Заменяем стандартные focus/move на диспетчеры hy3 
hl.bind(mainMod .. " + H", hy3.move_focus("l"))
hl.bind(mainMod .. " + L", hy3.move_focus("r"))
hl.bind(mainMod .. " + K", hy3.move_focus("u"))
hl.bind(mainMod .. " + J", hy3.move_focus("d"))

hl.bind(mainMod .. " + SHIFT + H", hy3.move_window("l"))
hl.bind(mainMod .. " + SHIFT + L", hy3.move_window("r"))
hl.bind(mainMod .. " + SHIFT + K", hy3.move_window("u")) 
hl.bind(mainMod .. " + SHIFT + J", hy3.move_window("d")) 

-- === HY3: ГРУППЫ (СПЛИТЫ) И ВКЛАДКИ ===
-- Создание горизонтального / вертикального сплита
hl.bind(mainMod .. " + B", hy3.make_group("h"))
hl.bind(mainMod .. " + V", hy3.make_group("v"))
-- Создание / переключение вкладок
hl.bind(mainMod .. " + W", hy3.make_group("tab"))
hl.bind(mainMod .. " + C", hy3.change_group("toggletab"))

-- Переключение фокуса между вкладками (опционально)
-- hl.bind(mainMod .. " + Tab", hy3.focus_tab("r", { wrap = true }))

-- Рабочие столы (оставляем как было)
hl.bind(mainMod .. " + CTRL + J", hl.dsp.focus({ workspace = "r+1" }))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.focus({ workspace = "r-1" }))
hl.bind(mainMod .. " + CTRL + SHIFT + J", hl.dsp.window.move({ workspace = "r+1", follow = true }))
hl.bind(mainMod .. " + CTRL + SHIFT + K", hl.dsp.window.move({ workspace = "r-1", follow = true }))

-- hyprexpo (оставляем)
-- hl.bind(mainMod .. " + Tab", function() hl.plugin.hyprexpo.expo("toggle") end)
-- hl.define_submap("hyprexpo", function()
--     hl.bind(mainMod .. " + Tab", function() hl.plugin.hyprexpo.expo("toggle") end)
--     hl.bind("escape", function() hl.plugin.hyprexpo.expo("cancel") end)
--     hl.bind("q",      function() hl.plugin.hyprexpo.expo("cancel") end)
--     hl.bind("left",  function() hl.plugin.hyprexpo.kb_focus("left") end)
--     hl.bind("right", function() hl.plugin.hyprexpo.kb_focus("right") end)
--     hl.bind("up",    function() hl.plugin.hyprexpo.kb_focus("up") end)
--     hl.bind("down",  function() hl.plugin.hyprexpo.kb_focus("down") end)
--     hl.bind("h",     function() hl.plugin.hyprexpo.kb_focus("left") end)
--     hl.bind("l",     function() hl.plugin.hyprexpo.kb_focus("right") end)
--     hl.bind("k",     function() hl.plugin.hyprexpo.kb_focus("up") end)
--     hl.bind("j",     function() hl.plugin.hyprexpo.kb_focus("down") end)
--     hl.bind("return", function() hl.plugin.hyprexpo.kb_confirm() end)
--     hl.bind("space",  function() hl.plugin.hyprexpo.kb_confirm() end)
-- end)
--
-- Полноэкранный режим (оставляем)
hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))

-- Переключение рабочих столов цифрами
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i }))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Прокрутка рабочих столов и управление мышью
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Мультимедиа (без изменений)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------
-- Правила окон оставляем как были
local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move  = "20 monitor_h-120",
    float = true,
})
