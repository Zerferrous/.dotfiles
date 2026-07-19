{
  lib,
  pkgs,
  ...
}:
{
  home-manager.sharedModules = [
    (_: {
      services.wayle = {
        enable = true;
      };
    })
  ];
}