# HiDPI for Wayland on NixOS
This repository is here to store my NixOS configurations for using Wayland on HiDPI so I never have to re-learn how to keep my cursor size consistent across all apps XD.

You can add these settings into your custom NixOS configuration or try to import these modules directly into your home.nix/configuration.nix. 

NOTE: I have not tested importing these as modules and compatability issues might arise. For instance: declaring your environment variables in two different locations (configuration.nix and HiDPI-system.nix) might throw an error. To circumvent this, add the element to the existing environment variables set declared in configuration.nix (or wherever you declare your env vars).

## Home-Manager Configurations
Home manager configurations are located in HiDPI-home.nix. This file can be imported into your home.nix imports section. 

This example was created for the ASUS Zenbook UM3402YAR running hyprland at 2880x1800 (90hz).

## System Configurations
System-wide configurations are located in HiDPI-system.nix.
This file can be imported into your configuration.nix imports section.

This example was created for the ASUS Zenbook UM3402YAR running hyprland at 2880x1800 (90hz).