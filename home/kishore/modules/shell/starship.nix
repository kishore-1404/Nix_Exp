{ config, pkgs, ... }:

let
  starshipPreset = pkgs.lib.strings.readFile ./starship-preset.toml;
in {
  programs.starship = {
    enable = true;
    settings = pkgs.lib.parseTOML starshipPreset;
  };
}
