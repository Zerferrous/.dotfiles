{
  host,
  pkgs,
  ...
}:
let
  inherit (import ../../hosts/${host}/variables.nix)
    hostname
    ;
in
{
  networking = {
    hostName = "${hostname}";
    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };
    
    wireless.iwd.enable = true;
  }
}