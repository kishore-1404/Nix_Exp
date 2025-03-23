{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    
    # Fish shell configuration options
    interactiveShellInit = ''
      # Any custom Fish initialization that should run for interactive shells
      starship init fish | source
    '';
    
    # Fish shell plugins and other configurations
  };
}