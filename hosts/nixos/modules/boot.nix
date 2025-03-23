{ config, pkgs, ... }:

{
  # Boot configuration
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        # If you're using a separate EFI partition, uncomment and adjust the path:
        # efiSysMountPoint = "/boot/efi";
      };
      grub = {
        enable = true;
        devices = [ "nodev" ]; # Use this for EFI installation
        efiSupport = true;
        useOSProber = true; # This enables automatic detection of Windows
        configurationLimit = 3; # Only keep the 3 most recent generations
      };
      
      # Prevent generating a lot of boot entries
      generationsDir.enable = false;
    };
  };
}