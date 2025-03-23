{ config, lib, pkgs, ... }:

{
  fonts.fontconfig.enable = true;
  
  home.packages = with pkgs; [
    # New approach using the nerd-fonts namespace
    nerd-fonts.fira-code
    
    # You can add other nerd fonts like this:
    # nerd-fonts.jetbrains-mono
    # nerd-fonts.hack
    
    # Other regular fonts (not nerd fonts) can be added directly
    # liberation_ttf
    # dejavu_fonts
  ];
}