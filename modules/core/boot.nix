{
  pkgs,
  ...
}:
{
  boot = {
    loader = {
      limine = {
        enable = true;
        style = {
          wallpaperStyle = "stretched";
        };
      };

    efi.canTouchEfiVariables = true;
    };

  };
}