# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config,inputs, outputs, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./nvidia.nix
      ./modules/boot.nix
      ./modules/networking.nix
      ./modules/localization.nix
      ./modules/services.nix

    ];

  programs.fish.enable = true;

  # # Define a user account. Don't forget to set a password with ‘passwd’.
  # users.users.kishore = {
  #   isNormalUser = true;
  #   description = "kishore";
  #   extraGroups = [ "networkmanager" "wheel" ];
  #   packages = with pkgs; [
  #     kdePackages.kate
  #     vscode
  #     microsoft-edge
  #   #  thunderbird
  #   ];
  #   shell = pkgs.fish;
  # };

  # # Enable automatic login for the user.
  # services.xserver.displayManager.autoLogin.enable = true;
  # services.xserver.displayManager.autoLogin.user = "kishore";

  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  	# Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  	inputs.home-manager.packages.${pkgs.system}.default 
    wget
    neovim
    fish
    os-prober
    kitty
    git
    gh
  ];

  # Add Fish to allowed shells list
  environment.shells = with pkgs; [
    fish
  ];
  # Set as default terminal
  environment.variables = {
   TERMINAL = "kitty";
  };


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

}
