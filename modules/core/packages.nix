{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    git
    eza
    yazi
    btop
    fastfetch
    microfetch
  ];
}