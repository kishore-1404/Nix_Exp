{ config, pkgs, ... }:

{
    imports = [
        # ./fish.nix
        ./kitty.nix
        ./starship.nix
    ];
}