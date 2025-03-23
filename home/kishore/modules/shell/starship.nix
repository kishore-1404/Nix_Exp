{ config, ... }: { 
programs.starship = {
      enable = true;
      settings = {
        # "$schema" = "https://starship.rs/config-schema.json";
        add_newline = true;
        command_timeout = 500;
        continuation_prompt = "[∙](bright-black) ";
        format = "[](0x9A348E)$username$hostname$localip$shlvl$singularity$kubernetes[](fg:0x9A348E bg:0xDA627D)$directory$vcsh[](fg:0xDA627D bg:0xFCA17D)$git_branch$git_commit$git_state$git_metrics$git_status$hg_branch[](fg:0x86BBD8 bg:0x06969A)$docker_context$package$buf[](fg:0xFCA17D bg:0x86BBD8)$c$cmake$cobol$container$daml$dart$deno$dotnet$elixir$elm$erlang$golang$haskell$helm$java$julia$kotlin$lua$nim$nodejs$ocaml$perl$php$pulumi$purescript$python$rlang$red$ruby$rust$scala$swift$terraform$vlang$vagrant$zig$nix_shell$conda$spack$memory_usage$aws$gcloud$openstack$azure$env_var$crystal$custom$sudo$cmd_duration$line_break$jobs$battery[](fg:0x06969A bg:0x33658A)$time$status$shell$character";
        right_format = "";
        scan_timeout = 30;
        
        aws = {
          format = "\\[[$symbol($profile)(\\($region\\))(\\[$duration\\])]($style)\\]";
          symbol = "🅰 ";
          style = "bold yellow";
          disabled = false;
          expiration_symbol = "X";
          force_display = false;
        };
        aws.region_aliases = {};
        aws.profile_aliases = {};
        
        # Keep all existing configuration, but modify the format fields based on the toml file
        
        bun = {
          format = "\\[[$symbol($version)]($style)\\]";
        };
        
        c = {
          format = "\\[[$symbol($version(-$name))]($style)\\]";
          style = "fg:149 bold bg:0x86BBD8";
          symbol = " ";
        };
        
        cmake = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "△ ";
          style = "bold blue";
        };
        
        cmd_duration = {
          format = "\\[[⏱ $duration]($style)\\]";
          style = "yellow bold";
        };
        
        cobol = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "⚙️ ";
          style = "bold blue";
        };
        
        conda = {
          format = "\\[[$symbol$environment]($style)\\]";
          symbol = " ";
          style = "green bold";
        };
        
        crystal = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🔮 ";
          style = "bold red";
        };
        
        dart = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🎯 ";
          style = "bold blue";
        };
        
        deno = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🦕 ";
          style = "green bold";
        };
        
        docker_context = {
          format = "\\[[$symbol$context]($style)\\]";
          style = "blue bold bg:0x06969A";
          symbol = " ";
        };
        
        dotnet = {
          format = "\\[[$symbol($version)(🎯 $tfm)]($style)\\]";
          symbol = "🥅 ";
          style = "blue bold";
        };
        
        elixir = {
          format = "\\[[$symbol($version \\(OTP $otp_version\\))]($style)\\]";
          style = "bold purple bg:0x86BBD8";
          symbol = " ";
        };
        
        elm = {
          format = "\\[[$symbol($version)]($style)\\]";
          style = "cyan bold bg:0x86BBD8";
          symbol = " ";
        };
        
        erlang = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = " ";
          style = "bold red";
        };
        
        gcloud = {
          format = "\\[[$symbol$account(@$domain)(\\($region\\))]($style)\\]";
          symbol = "☁️ ";
          style = "bold blue";
        };
        
        git_branch = {
          format = "\\[[$symbol$branch]($style)\\]";
          symbol = " ";
          style = "bold purple bg:0xFCA17D";
        };
        
        git_status = {
          format = "([\\[$all_status$ahead_behind\\]]($style))";
          style = "red bold bg:0xFCA17D";
        };
        
        golang = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = " ";
          style = "bold cyan bg:0x86BBD8";
        };
        
        haskell = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "λ ";
          style = "bold purple bg:0x86BBD8";
        };
        
        helm = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "⎈ ";
          style = "bold white";
        };
        
        hg_branch = {
          format = "\\[[$symbol$branch]($style)\\]";
          symbol = " ";
          style = "bold purple";
        };
        
        java = {
          format = "\\[[$symbol($version)]($style)\\]";
          style = "red dimmed bg:0x86BBD8";
          symbol = " ";
        };
        
        julia = {
          format = "\\[[$symbol($version)]($style)\\]";
          style = "bold purple bg:0x86BBD8";
          symbol = " ";
        };
        
        kotlin = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🅺 ";
          style = "bold blue";
        };
        
        kubernetes = {
          format = "\\[[$symbol$context( \\($namespace\\))]($style)\\]";
          style = "cyan bold";
          symbol = "⛵ ";
        };
        
        lua = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🌙 ";
          style = "bold blue";
        };
        
        memory_usage = {
          format = "\\[$symbol[$ram( | $swap)]($style)\\]";
          style = "white bold dimmed";
          symbol = " ";
        };
        
        nim = {
          format = "\\[[$symbol($version)]($style)\\]";
          style = "yellow bold bg:0x86BBD8";
          symbol = " ";
        };
        
        nix_shell = {
          format = "\\[[$symbol$state( \\($name\\))]($style)\\]";
          style = "bold blue";
          symbol = " ";
        };
        
        nodejs = {
          format = "\\[[$symbol($version)]($style)\\]";
          style = "bold green bg:0x86BBD8";
          symbol = " ";
        };
        
        ocaml = {
          format = "\\[[$symbol($version)(\\($switch_indicator$switch_name\\))]($style)\\]";
          style = "bold yellow";
          symbol = "🐫 ";
        };
        
        openstack = {
          format = "\\[[$symbol$cloud(\\($project\\))]($style)\\]";
          symbol = "☁️  ";
          style = "bold yellow";
        };
        
        package = {
          format = "\\[[$symbol$version]($style)\\]";
          symbol = "📦 ";
          style = "208 bold";
        };
        
        perl = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🐪 ";
          style = "149 bold";
        };
        
        php = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🐘 ";
          style = "147 bold";
        };
        
        pulumi = {
          format = "\\[[$symbol$stack]($style)\\]";
          symbol = " ";
          style = "bold 5";
        };
        
        purescript = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "<=> ";
          style = "bold white";
        };
        
        python = {
          format = "\\[[${symbol}${pyenv_prefix}(${version})(\\($virtualenv\\))]($style)\\]";
          style = "yellow bold";
          symbol = "🐍 ";
        };
        
        red = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🔺 ";
          style = "red bold";
        };
        
        ruby = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "💎 ";
          style = "bold red";
        };
        
        rust = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🦀 ";
          style = "bold red bg:0x86BBD8";
        };
        
        scala = {
          format = "\\[[$symbol($version)]($style)\\]";
          style = "red bold";
          symbol = "🆂 ";
        };
        
        spack = {
          format = "\\[[$symbol$environment]($style)\\]";
          symbol = "🅢 ";
          style = "blue bold";
        };
        
        sudo = {
          format = "\\[[as $symbol]($style)\\]";
          symbol = "🧙 ";
          style = "bold blue";
        };
        
        swift = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "🐦 ";
          style = "bold 202";
        };
        
        terraform = {
          format = "\\[[$symbol$workspace]($style)\\]";
          symbol = "💠 ";
          style = "bold 105";
        };
        
        time = {
          format = "\\[[$time]($style)\\]";
          style = "bold yellow bg:0x33658A";
        };
        
        username = {
          format = "\\[[$user]($style)\\]";
          style_user = "yellow bold bg:0x9A348E";
          style_root = "red bold bg:0x9A348E";
        };
        
        vagrant = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "⍱ ";
          style = "cyan bold";
        };
        
        vlang = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "V ";
          style = "blue bold";
        };
        
        zig = {
          format = "\\[[$symbol($version)]($style)\\]";
          symbol = "↯ ";
          style = "bold yellow";
        };

        # You may want to add this if you use Solidity
        solidity = {
          format = "\\[[$symbol($version)]($style)\\]";
          # Add your preferred style and symbol here
        };
        
        # Keep the rest of your existing configuration
        # ...
      };
    };
}