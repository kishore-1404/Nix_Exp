{ config, pkgs, ... }:

let
  starshipPreset = builtins.readFile ./starship-preset.toml;
in {
  programs.starship = {
    enable = true;
    settings = builtins.fromTOML starshipPreset;
  };
}
