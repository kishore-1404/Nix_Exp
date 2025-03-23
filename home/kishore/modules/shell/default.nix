{ config, pkgs, ... }:

{
    imports = [
        # ./fish.nix
        ./kitty.nix
        ./starship.nix
    ];

    # Additional shell configurations can go here
}