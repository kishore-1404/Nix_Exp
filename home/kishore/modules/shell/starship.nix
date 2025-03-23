{ config, pkgs, ... }:

let
  starshipPreset = pkgs.writeText "starship-preset.toml" ''
    [aws]
    format = '\\[[$symbol($profile)(\\($region\\))(\\[$duration\\])]($style)\\]'
    [bun]
    format = '\\[[$symbol($version)]($style)\\]'
    [c]
    format = '\\[[$symbol($version(-$name))]($style)\\]'
    [cmake]
    format = '\\[[$symbol($version)]($style)\\]'
    [cmd_duration]
    format = '\\[[⏱ $duration]($style)\\]'
    [cobol]
    format = '\\[[$symbol($version)]($style)\\]'
    [conda]
    format = '\\[[$symbol$environment]($style)\\]'
    [crystal]
    format = '\\[[$symbol($version)]($style)\\]'
    [daml]
    format = '\\[[$symbol($version)]($style)\\]'
    [dart]
    format = '\\[[$symbol($version)]($style)\\]'
    [deno]
    format = '\\[[$symbol($version)]($style)\\]'
    [docker_context]
    format = '\\[[$symbol$context]($style)\\]'
    [dotnet]
    format = '\\[[$symbol($version)(🎯 $tfm)]($style)\\]'
    [elixir]
    format = '\\[[$symbol($version \\(OTP $otp_version\\))]($style)\\]'
    [elm]
    format = '\\[[$symbol($version)]($style)\\]'
    [erlang]
    format = '\\[[$symbol($version)]($style)\\]'
    [golang]
    format = '\\[[$symbol($version)]($style)\\]'
    [haskell]
    format = '\\[[$symbol($version)]($style)\\]'
    [haxe]
    format = '\\[[$symbol($version)]($style)\\]'
    [helm]
    format = '\\[[$symbol($version)]($style)\\]'
    [java]
    format = '\\[[$symbol($version)]($style)\\]'
    [julia]
    format = '\\[[$symbol($version)]($style)\\]'
    [kotlin]
    format = '\\[[$symbol($version)]($style)\\]'
    [lua]
    format = '\\[[$symbol($version)]($style)\\]'
    [nim]
    format = '\\[[$symbol($version)]($style)\\]'
    [nix_shell]
    format = '\\[[$symbol$state( \\($name\\))]($style)\\]'
    [nodejs]
    format = '\\[[$symbol($version)]($style)\\]'
    [ocaml]
    format = '\\[[$symbol($version)(\\($switch_indicator$switch_name\\))]($style)\\]'
    [opa]
    format = '\\[[$symbol($version)]($style)\\]'
    [perl]
    format = '\\[[$symbol($version)]($style)\\]'
    [php]
    format = '\\[[$symbol($version)]($style)\\]'
    [pulumi]
    format = '\\[[$symbol$stack]($style)\\]'
    [purescript]
    format = '\\[[$symbol($version)]($style)\\]'
    [python]
    format = '\\[[$symbol$version]($style)\\]'
    [rlang]
    format = '\\[[$symbol($version)]($style)\\]'
    [ruby]
    format = '\\[[$symbol($version)]($style)\\]'
    [rust]
    format = '\\[[$symbol($version)]($style)\\]'
    [scala]
    format = '\\[[$symbol($version)]($style)\\]'
    [spack]
    format = '\\[[$symbol$environment]($style)\\]'
    [sudo]
    format = '\\[as $symbol]'
    [swift]
    format = '\\[[$symbol($version)]($style)\\]'
    [terraform]
    format = '\\[[$symbol$workspace]($style)\\]'
    [vagrant]
    format = '\\[[$symbol($version)]($style)\\]'
    [vlang]
    format = '\\[[$symbol($version)]($style)\\]'
    [zig]
    format = '\\[[$symbol($version)]($style)\\]'
  '';
in {
  programs.starship = {
    enable = true;
    settings = (pkgs.lib.fromTOML starshipPreset);
  };
}
