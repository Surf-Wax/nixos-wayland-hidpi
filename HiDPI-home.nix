# Includes configurations for HiDPI displays on Wayland
# Import this file into your home.nix or add these to your custom config
{ config, lib, pkgs, ... }

{
  # Set monitor settings (Hyprland in this case)
  wayland.windowManager.hyprland = {
    settings = {
      monitor = "eDP-1,2880x1800@90,auto,2,bitdepth,10";
    };
  };


  # Set text scaling factor for GTK applications
  #  This keeps a sharp appearance (no blur)
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      text-scaling-factor = 0.8;
    };
  };

  # Mouse/Cursor scaling for consistency across all apps (electron & xwayland)
  home.pointerCursor = {    # Home manager
    gtk.enable = true;
    x11.enable = true;
    size = 24;
  };
  stylix = {                # Stylix (comment this out if you're not using stylix)
    cursor.size = 24;
  };
  xresources.properties = { # Xresources for xwayland apps
    "Xcursor*size" = 24;
  };
}