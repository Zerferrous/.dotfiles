{
  inputs,
  host,
  pkgs,
  ...
}:
let 
  inherit (import ../../../hosts/${host}/variables.nix) terminal;
in
{
  home-manager.sharedModules = [
    (_: {
      programs.nixvim = {
        enable = true;
      };
    })
  ];
}