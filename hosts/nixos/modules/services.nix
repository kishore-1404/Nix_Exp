{ config, pkgs, ... }:

{
  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  # services.displayManager.sddm.wayland.enable = true; # For ruunning sddm Wayland
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.autoNumlock = true;  # Enable NumLock at login
  services.desktopManager.plasma6.enable = true;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };
  # Bluetooth configuration
  hardware.bluetooth = {
    enable = true;                # Already in your hardware-configuration.nix
    powerOnBoot = true;           # Power up Bluetooth adapter on boot
    settings = {
      General = {
        Enable = "Source,Sink,Media,Socket"; # Enable A2DP profiles
        Experimental = true;                # Enable experimental features
      };
    };
  };
  # Enable the Bluetooth service
  services.blueman.enable = true;  # Optional: Enables the Blueman Bluetooth manager



  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;

  # # Enable automatic login for the user.
  services.xserver.displayManager.autoLogin.enable = false;
  services.xserver.displayManager.autoLogin.user = "kishore";
  
  # Enable supergfxd for hybrid graphics management
  services.supergfxd.enable = true;

  # Explicitly disable power-profiles-daemon
  services.power-profiles-daemon.enable = false;

  services.tlp = {
      enable = true;
      settings = {
       #Optional helps save long term battery health
       START_CHARGE_THRESH_BAT0 = 40; # 40 and below it starts to charge
       STOP_CHARGE_THRESH_BAT0 = 80; # 80 and above it stops charging
      };
  };

  services.auto-cpufreq.enable = true;
  services.auto-cpufreq.settings = {
    battery = {
      governor = "powersave";
      turbo = "never";
    };
    charger = {
      governor = "performance";
      turbo = "auto";
    };
  };
}