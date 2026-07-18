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
          wallpapers = [
            pkgs.nixos-artwork.wallpapers.simple-dark-gray-bootloader.gnomeFilePath 
          ];
        };
      };

    efi.canTouchEfiVariables = true;
    };

  };
}