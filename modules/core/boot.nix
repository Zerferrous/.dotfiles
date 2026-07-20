{
  pkgs,
  ...
}:
{
  boot = {
    loader = {
      limine = {
        enable = true;

        resolution = "2560x1440x32";

        style = {
          
        };
      };

    efi.canTouchEfiVariables = true;
    };

  };
}