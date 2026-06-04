 { config, pkgs, ... }:
{
 programs.zsh = {
    enable = true;
    initContent = "fastfetch"; 
    shellAliases = {
      c = "clear && fastfetch";
      "flake-update" = "cd ~/.nix-config/nix && sudo nix flake update";
      "nix-update" = "cd ~/.nix-config/nix && sudo nixos-rebuild switch --flake";
      "full-update" = "cd ~/.nix-config/nix && sudo nix flake update && sudo nixos-rebuild switch --flake";
      "cdnix" = "cd ~/.nix-config/nix && ls";
      "cdnixconf" = "cd ~/.nix-config/dotfiles && ls";
      "git-add" = "cd ~/.nix-config && git add .";
      "git-push" = "cd ~/.nix-config && git push -u origin main";
      "git-commit" = "cd ~/.nix-config && git commit . -m meow";
      "nix-clean" = "sudo nix-env --profile /nix/var/nix/profiles/system --delete-generations +3 && sudo nix-collect-garbage";
      "git-clean-confirm" = "cd ~/.nix-config && sudo git reset --hard HEAD && sudo git clean -fd";
      "nix-update-sleep" = "cd /etc/nixos && sudo nix flake update && sudo nixos-rebuild switch --flake && poweroff";
      "rm" = "rm -i";
      "extract" = "sudo atool -x";
      "compress" = "sudo atool -a";
    };

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
  };
  }
