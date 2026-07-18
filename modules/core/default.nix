{ ... }:
{
  imports = [
    ./users.nix
    ./networking.nix
    ./boot.nix
    ./services.nix
    ./system.nix
    ./security.nix
    ./dm.nix
    ./nh.nix
    ./packages.nix
    ./fonts.nix
  ];
}