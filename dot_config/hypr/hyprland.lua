---@module 'hl'
---@diagnostic disable: undefined-global
---@diagnostic disable: unused-local

hl.monitor({
    output   = "DP-1",
    mode     = "3840x2160@240",
    position = "auto",
    scale    = 1.2,
    bitdepth = 10,
    vrr = 1,
    cm = "srgb",
    sdr_eotf = "gamma24",
    sdr_min_luminance = 0,
    sdrbrightness = 0.15,
    sdr_max_luminance = 1000,
})

hl.config({
  general = {
    allow_tearing = true
  }
})

hl.window_rule({
  match = { class = "Discovery.exe" }, immediate = true
})

hl.config({
    render = {
        cm_auto_hdr = 0,
        cm_enabled = true,
        direct_scanout = 0,
        send_content_type = false,
    },
    cursor = {
        no_hardware_cursors = 0,
        no_break_fs_vrr = 0,
    },
})

hl.workspace_rule({
    workspace = 1,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 2,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 3,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 4,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 5,
    monitor = "DP-1",
})

hl.workspace_rule({
    workspace = 11,
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = 12,
    monitor = "DP-2",
})

hl.workspace_rule({
    workspace = 13,
    monitor = "DP-1",
})

-- Gaming stuff
hl.window_rule({
    name = "steam-tweaks",
    match = {
        class = "steam",
        float = true,
    },
    min_size = "1 1",
    rounding = 0,
})
-- Tagging game windows
hl.window_rule({
    name = "proton-game-tag",
    match = {
        xdg_tag = "proton-game",
    },
    tag = "+game",
})
hl.window_rule({
    name = "steam-apps-tag",
    match = {
        initial_class = "steam_app_.*",
    },
    tag = "+game",
})
hl.window_rule({
    name = "cs2-tag",
    match = {
        class = "cs2",
    },
    tag = "+game",
})
hl.window_rule({
    name = "momentum-tag",
    match = {
        class = "momentum",
    },
    tag = "+game",
})
hl.window_rule({
    name = "moonlight-tag",
    match = {
        class = "com.moonlight_stream.Moonlight",
    },
    tag = "+game",
})
hl.window_rule({
    name = "gamescope-tag",
    match = {
        class = "gamescope",
    },
    tag = "+game",
})
hl.window_rule({
    name = "minecraft-tag",
    match = {
        class = "Minecraft.*",
    },
    tag = "+game",
})

-- Rules to apply
hl.window_rule({
    name = "games",
    match = {
        tag = "game",
        fullscreen = true,
    },
    border_size = 0,
    rounding = 0,
    decorate = false,
  --  force_rgbx = true,
    sync_fullscreen = true,
    no_anim = true,
    no_blur = true,
    no_dim = true,
    no_max_size = true,
    no_shadow = true,
    persistent_size = true,
    focus_on_activate = true,
    immediate = true,
})
hl.window_rule({
    name = "game-popups",
    match = {
        tag = "game"
    },
    content = "game",
    workspace = 4,
    center = true,
    idle_inhibit = "always",
})

-- unscale XWayland

hl.config({
    xwayland = {
        force_zero_scaling = true,
    },
})

-- toolkit-specific scale

hl.env("GDK_SCALE", 2)
hl.env("XCURSOR_SIZE", 128)
hl.env("HYPRCURSOR_THEME", "MyCursor")
hl.env("HYPRCURSOR_SIZE", 128)

--##################

--## MY PROGRAMS ###

--##################

local terminal = "foot"
local fileManager = "dolphin"
local menu = "rofi -show drun -theme blush"

--exec-once = hyprpm reload -n

--exec-once = [workspace 2 silent] foot -e nvim

--exec-once = [workspace 1 silent] foot -e bash -c "fastfetch && zsh"

--exec-once = [workspace 3 silent] zen-browser 




--############################

--## ENVIRONMENT VARIABLES ###

--############################

--####################

--## LOOK AND FEEL ###

--####################

hl.config({
    general = {
        col = {
            active_border   = "rgba(FFFFFF22)",
            inactive_border = "rgba(FFFFFF10)",
        },
        --col.active_border == 0xFFFFFF22,
        --col.inactive_border == 0xFFFFFF10,
        gaps_in = 0,
        gaps_out = 0,
        border_size = 1,
        resize_on_border = false,
        allow_tearing = true,
        layout = "dwindle",
    },
})

hl.config({
    decoration = {
        rounding = 0,
        -- Change transparency of focused and unfocused windows
        active_opacity = 1.0,
        inactive_opacity = 0.94,
        --col.active_border == "rgba(FFFFFF22)",
        --col.inactive_border == "rgba(FFFFFF10)",
        -- https://wiki.hyprland.org/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
            vibrancy = 0.1696,
        },
    },
})

-- https://wiki.hyprland.org/Configuring/Variables/#animations

hl.config({

    animations = {
        enabled = true,
    },
})

-- Default curves and animations, see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
hl.curve("easeOutQuint",   { type = "bezier", points = { {0.23, 1},    {0.32, 1}    } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1}    } })
hl.curve("linear",         { type = "bezier", points = { {0, 0},       {1, 1}       } })
hl.curve("almostLinear",   { type = "bezier", points = { {0.5, 0.5},   {0.75, 1}    } })
hl.curve("quick",          { type = "bezier", points = { {0.15, 0},    {0.1, 1}     } })

-- Default springs
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
hl.animation({ leaf = "workspaces",    enabled = false,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn",  enabled = false,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = false,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor",    enabled = true,  speed = 7,    bezier = "quick" })


-- See https://wiki.hyprland.org/Configuring/Dwindle-Layout/ for more

hl.config({
    dwindle = {
        --    pseudotile = true # Master switch for pseudotiling. Enabling is bound to mainMod + P in the keybinds section below
        --       preserve_split = true # You probably want this
    },
})

-- See https://wiki.hyprland.org/Configuring/Master-Layout/ for more

--master {

--    new_is_master = true

--}

-- https://wiki.hyprland.org/Configuring/Variables/#misc

hl.config({
    misc = {
        force_default_wallpaper = 0,
        -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo = true,
        -- If true disables the random hyprland logo / anime girl background. :(
    },
})

--############

--## INPUT ###

--############

-- https://wiki.hyprland.org/Configuring/Variables/#input

hl.config({
    input = {
        follow_mouse = 1,
        focus_on_close = 1,
        mouse_refocus = true,
        natural_scroll = false,
        sensitivity = -1.0,
        -- -1.0 - 1.0, 0 means no modification.
        force_no_accel = false,
        touchpad = {
            natural_scroll = true,
        },
    },
})

-- Example per-device config

-- See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more

-- NOTE: Section 'device' may be a plugin or custom section; verify the output

--###################

--## KEYBINDINGSS ###

--###################

-- See https://wiki.hyprland.org/Configuring/Keywords/

local mainMod = "SUPER"

-- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more

hl.bind("SUPER + C", hl.dsp.window.close())

hl.bind("SUPER + SHIFT + C", hl.dsp.window.kill())

hl.bind(mainMod .. " + " .. "V", hl.dsp.window.float())

hl.bind(mainMod .. " + " .. "A", hl.dsp.exec_cmd("rofi -show drun -theme blush"))

hl.bind("CTRL + ALT" .. " + " .. "S", hl.dsp.exec_cmd("sh /home/zeptic/zeptittyconf/vimAnywhere-hyprland/copyToClipboardHook.sh"))

hl.bind("CTRL + ALT" .. " + " .. "V", hl.dsp.exec_cmd("sh /home/zeptic/zeptittyconf/vimAnywhere-hyprland/run.sh"))

--bind = CTRL ALT, W, exec, [workspace 5] foot --hold -e zsh "/home/zeptic/zeptittyconf/vfio-zeptic-dynamic/manualHooks/vfio-hyprland.sh"

-- Move focus with mainMod + arrow keys

--hl.bind(mainMod .. " + " .. "I", hl.dsp.focus({ direction = "left" }))

--hl.bind(mainMod .. " + " .. "O", hl.dsp.focus({ direction = "right" }))

--hl.bind(mainMod .. " + " .. "K", hl.dsp.focus({ direction = "up" }))

--hl.bind(mainMod .. " + " .. "L", hl.dsp.focus({ direction = "down" }))

--hl.bind("SUPER + SHIFT" .. " + " .. "O", { direction = "l" })

--hl.bind("SUPER + SHIFT" .. " + " .. "L", { direction = "r" })

--hl.bind("SUPER + SHIFT" .. " + " .. "I", { direction = "u" })

--hl.bind("SUPER + SHIFT" .. " + " .. "K", { direction = "d" })

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + CTRL + L", hl.dsp.resizeactive("50 0"))

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + CTRL + O", hl.dsp.resizeactive("-50 0"))

-- TODO: manual review (unknown dispatcher: resizeactive)
--easyeffects hl.bind("$mainMod + SHIFT + CTRL + I", hl.dsp.resizeactive("0 -50"))

-- TODO: manual review (unknown dispatcher: resizeactive)
-- hl.bind("$mainMod + SHIFT + CTRL + K", hl.dsp.resizeactive("0 50"))

-- Switch workspaces with mainMod + [0-9]

hl.bind(mainMod .. " + " .. "S", hl.dsp.focus({ workspace = 1 }))

hl.bind(mainMod .. " + " .. "D", hl.dsp.focus({ workspace = 2 }))

hl.bind(mainMod .. " + " .. "F", hl.dsp.focus({ workspace = 3 }))

hl.bind(mainMod .. " + " .. "G", hl.dsp.focus({ workspace = 4 }))

hl.bind(mainMod .. " + " .. "W", hl.dsp.focus({ workspace = 11 }))

hl.bind(mainMod .. " + " .. "E", hl.dsp.focus({ workspace = 12 }))

hl.bind(mainMod .. " + " .. "R", hl.dsp.focus({ workspace = 13 }))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "S", hl.dsp.window.move({workspace = 1, follow = false,}))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "D", hl.dsp.window.move({workspace = 2, follow = false,}))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "F", hl.dsp.window.move({workspace = 3, follow = false,}))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "G", hl.dsp.window.move({workspace = 4, follow = false,}))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "W", hl.dsp.window.move({workspace = 11, follow = false,}))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "E", hl.dsp.window.move({workspace = 12, follow = false,}))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "R", hl.dsp.window.move({workspace = 13, follow = false,}))

hl.bind(mainMod .. " + " .. "T", hl.dsp.exec_cmd("grim -g \"$(slurp -d)\" - | wl-copy -t image/png"))

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "T", hl.dsp.exec_cmd("grim -g $(slurp)-| convert- -resize 300%-| tesseract--| wl-copy"))

hl.bind("SUPER + X", hl.dsp.window.fullscreen({"fullscreen", "toggle", "fucused"}))

--hl.bind(mainMod .. " + " .. "Z", hl.dsp.window.fullscreen_state("2 0"))

--hl.bind(mainMod .. " + " .. "B", hl.dsp.window.fullscreen_state("0 2"))

hl.bind(mainMod .. " + " .. "Q", hl.dsp.exec_cmd("foot"))

--    bind = $mainMod, M, exec, [workspace 4] rofi -modi games -show games -theme games

--    bind = $mainMod, N, exec, [workspace 11] foot -e sh steam

--    bind = $mainMod, P, exec, [workspace 13] missioncenter  

--     bind = $mainMod, I, exec, [workspace 13] easyeffects  

--    bind = $mainMod, O, exec, [workspace 13] pavucontrol  

--bind = $mainMod, O, exec, [workspace 11] foot -e sudo /home/zeptic/zeptittyconf/.dotfiles/.desktopScripts/autoStartWinVM.sh 

hl.bind(mainMod .. " + " .. "SHIFT" .. " + " .. "A", hl.dsp.window.pin())

--change this to without shift

-- Example special workspace (scratchpad)

--bind = $mainMod, S, togglespecialworkspace, magic

--bind = $mainMod SHIFT, S, movetoworkspace, special:magic

-- Scroll through existing workspaces with mainMod + scroll

hl.bind(mainMod .. " + " .. "mouse_down", hl.dsp.focus({ workspace = "e+1" }))

hl.bind(mainMod .. " + " .. "mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging

hl.bind(mainMod .. " + " .. "mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + " .. "mouse:273", hl.dsp.window.resize(), { mouse = true })

--#############################

--## WINDOWS AND WORKSPACES ###

--#############################

hl.window_rule({
    name  = "carla-lsp-fix",
    match = {
        class = "^(Carla)$",
    },
    float = true,
    no_max_size = true,
    no_initial_focus = true,
    focus_on_activate = true,
})

hl.window_rule({
    name  = "windowrule-2",
    match = {
        title = "^(Save File)$",
    },
    float = true,
})

hl.window_rule({
    match = { class = "^(mpv)$" },
    opacity = "1.0 1.0 override",
    opaque = true,
    no_blur = true,
    no_dim = true,
})

hl.window_rule({
    name  = "windowrule-3",
    match = {
        title = "^(Save File)$",
    },
    size = { 800, 480 },
})

hl.window_rule({
    name  = "windowrule-4",
    match = {
        title = "^(Save File)$",
    },
    opaque = true,
})

--windowrulev2 = float, pin, title:^(Picture-in-Picture)$  #PIP for firefox/forks (float)

hl.window_rule({
    name  = "windowrule-5",
    match = {
        title = "^(Picture-in-Picture)$",
    },
    pin = true,
})

hl.window_rule({
    name  = "windowrule-6",
    match = {
        class = "(clipse)",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-7",
    match = {
        class = "(clipse)",
    },
    size = { 622, 652 },
})

hl.window_rule({
    name  = "windowrule-8",
    match = {
        class = "^(org.gnome.Calculator)$",
    },
    float = true,
    size = { 500, 650 },
})

hl.window_rule({
    name  = "windowrule-9",
    match = {
        class = "^(rquickshare)$",
    },
    size = { 1280, 720 },
    float = true,
})

hl.window_rule({
    name  = "windowrule-10",
    match = {
        title = "^(Picture in picture)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-11",
    match = {
        class = "^(xfce-polkit)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-12",
    match = {
        class = "^(xdg-desktop-portal-gtk)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-13",
    match = {
        class = "^(qt5ct)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-14",
    match = {
        class = "^(org.pulseaudio.pavucontrol)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-15",
    match = {
        class = "^(blueman-manager)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-16",
    match = {
        class = "^(org.pwmt.zathura)$",
    },
    opacity = 0.9,
})

hl.window_rule({
    name  = "windowrule-17",
    match = {
        title = "^(Steam)$",
    },
    workspace = "11", "silent",
})

hl.window_rule({
    name  = "windowrule-18",
    match = {
        class = "^(steam)$",
    },
    workspace = "11", "silent",
})

hl.window_rule({
    name  = "windowrule-19",
    match = {
        title = "^(Sign in to Steam)$",
    },
    workspace = "11", "silent",
})

hl.window_rule({
    name  = "windowrule-20",
    match = {
        class = "^(looking-glass-client)$",
    },
    workspace = "11", "silent",
})


hl.window_rule({
    name  = "windowrule-22",
    match = {
        title = "^(vesktop)$",
    },
    workspace = "12", "silent",
})

hl.window_rule({
    name  = "windowrule-23",
    match = {
        title = "^(Discord)$",
    },
    workspace = "12", "silent",
})

-- Autostart
hl.on("hyprland.start", function()
    hl.exec_cmd("hypridle")
    hl.exec_cmd("hyprsunset")
    hl.exec_cmd("sunshine")
    hl.exec_cmd("sleep 0.1 && hyprctl dispatch workspace 3 && hyprctl dispatch workspace 11 && hyprctl dispatch workspace 1")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("[workspace 2 silent] foot -e nvim")
    hl.exec_cmd("[workspace 1 silent] foot")
    hl.exec_cmd("[workspace 3 silent] zen-browser")
    hl.exec_cmd("systemctl --user start plasma-polkit-agent")

end)
