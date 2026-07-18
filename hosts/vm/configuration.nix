{
  lib,
  ...
}:
let
  vars = import ./variables.nix;
in
{
  imports = [
    ./hardware-configuration.nix
    ./host-packages.nix

    ./modules/default.nix
  ];
}