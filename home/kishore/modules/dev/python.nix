{ config, pkgs, ... }:

{
    home.packages = with pkgs; [
        pyenv
        python3
        python3Packages.pip
        python3Packages.virtualenv
        python3Packages.numpy
        python3Packages.pandas
        python3Packages.requests
        # python3Packages.flask
        # python3Packages.django
        python3Packages.matplotlib
        python3Packages.scipy
    ];

    programs.python = {
        enable = true;
        package = pkgs.python3;
    };

    # home.file.".config/pip/pip.conf".text = ''
    #     [global]
    #     timeout = 60
    #     index-url = https://pypi.org/simple
    # '';
}