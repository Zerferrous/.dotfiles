{
  lib,
  pkgs,
  ...
}:
{
  home-manager.sharedModules = [
    (_: {
      programs.wayle = {
        enable = true;
      };
    })
  ];
}