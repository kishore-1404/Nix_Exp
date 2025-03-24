{ config, lib, pkgs, ... }:

{
  imports = [
    ./dev
  ];
  home.packages = with pkgs; [
    neofetch
    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring

    yazi #terminal file manager

    #utils
    eza
    fzf
    tree 

    # system tools
    sysstat
    lm_sensors # for `sensors` command
    ethtool
    pciutils # lspci
    usbutils # lsusb
    starship
    
    # Add more packages here
  ];
}