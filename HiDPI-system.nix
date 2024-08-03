# Includes configurations for HiDPI displays on Wayland
# Import this file into your configuration.nix, or add these to your custom config
{ config, lib, pkgs, ... }

{
  # Set grub menu resolution (so it's not tiny)
  boot.loader = {
    grub = {
      # enable = true;  # should be set in configuration.nix
      gfxmodeEfi = "1024x768";
    };
  }; 

  # Set scaling factor for xserver (used for xwayland)
  services.xserver = {
    # enable = true;    # should be set in configuration.nix 
    dpi = 116;          # change depending on resolution
  }; 

  # Allow ozone support for electron apps
  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };
 
}