hl.monitor({ output = "DVI-D-1", mode = "1440x900@74.98", position = "0x0", scale = 1 })
hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@74.973", position = "1920x0", scale = 1 })

hl.env("_JAVA_AWT_WM_NONREPARENTING", "1")
hl.env("WLR_NO_HARDWARE_CURSORS", "1")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

hl.on("hyprland.start", function()
    hl.exec_cmd("~/.config/hypr/xdg-portal-hyprland")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("waybar")
    hl.exec_cmd("waybar -c ~/.config/waybar/config-dvi.jsonc")
    hl.exec_cmd("swaybg -m fill -i ~/.config/hypr/arch.png")
    hl.exec_cmd("pactl load-module module-null-sink \
		sink_name=VirtualMic \
		sink_properties=device.description=Virtual_Microphone")
end)

hl.config({
	input = {kb_layout = "us,ua" , kb_options = "grp:alt_shift_toggle", follow_mouse = 1},
	general = {gaps_in = 0, gaps_out = 0, border_size = 0, layout = "dwindle"},
	decoration = {rounding = 4},
	dwindle = {preserve_split = true}
})

hl.curve("myBezier", {type = "bezier", points = {{0.05, 0.9},{0.1, 1.05}}})
hl.animation({ leaf = "windowsOut", enabled = 1, speed = 2, bezier = "default", style = "popin 10%"})
hl.animation({ leaf = "windows", enabled = 1, speed = 2, bezier = "myBezier"})
hl.animation({ leaf = "fade", enabled = 1, speed = 2, bezier = "default"})
hl.animation({ leaf = "workspaces", enabled = 1, speed = 2, bezier = "default"})

hl.window_rule({name = "ffpip", match = {class = "firefox", title = "Зображення в зображенні"},
	float = true, pin = true, move = { 1380, 760 }, size = { 540, 30}})

hl.window_rule({name = "tgcalls", match = {class = "org.telegram.desktop"},
        float = true, size = { 1280, 720 }, move = { 320, 180 }})

hl.window_rule({name = "pavucontrol", match = {class = "org.pulseaudio.pavucontrol"},
	float = true, size = { 1280, 720 }, move = { 320, 180 }})

hl.window_rule({name = "filemgrfloat", match = {class = "org.gnome.Nautilus"},
	float = true, size = { 1280, 720 }, move = { 320, 180 }})

hl.window_rule({match = {title = "Alacritty"}, float = true, size = {1100, 720}})

hl.bind("SUPER + Q", hl.dsp.exec_cmd("alacritty"))
hl.bind("SUPER + SHIFT + X", hl.dsp.window.close(active))
hl.bind("SUPER + V", hl.dsp.window.float(active))
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("rofi -show run -theme gruvbox-dark"))

hl.bind("SUPER + S", hl.dsp.exec_cmd('sh -c \'grim -g "$(slurp)" - | wl-copy\''))
hl.bind("SUPER + Z", hl.dsp.exec_cmd('sh -c \'hyprpicker -a -l && notify-send -t 1000 "Color copied"\''))

hl.bind("SUPER + C", hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle && notify-send -t 100 "Mic toggled"'))

hl.bind("SUPER + F", hl.dsp.window.fullscreen(toggle, active))

hl.bind("ALT + F4", hl.dsp.exec_cmd("alacritty -e sh -c 'fastfetch; sleep 1'"))

hl.bind("SUPER + LEFT", hl.dsp.focus({direction = "left"}))
hl.bind("SUPER + RIGHT", hl.dsp.focus({direction = "right"}))
hl.bind("SUPER + UP", hl.dsp.focus({direction = "up"}))
hl.bind("SUPER + DOWN", hl.dsp.focus({direction = "down"}))

--focus
for i = 1, 9 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({workspace = i}))
end
hl.bind("SUPER + 0", hl.dsp.focus({workspace = 10}))

--move
for i = 1, 9 do
	hl.bind("SUPER + SHIFT +" .. i, hl.dsp.window.move({workspace = i, follow = true}))
end
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({workspace = 10, follow = true}))

hl.bind("SUPER + mouse:272", hl.dsp.window.drag(active))
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(active))
