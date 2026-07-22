{ pkgs, lib, ... }:
{
  stylix.enable = true;
  stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-dark.yaml";
  stylix.polarity = "dark";
  stylix.autoEnable = false;

  stylix.cursor = {
    package = pkgs.volantes-cursors;
    name = "volantes_cursors";
    size = 24;
  };

  stylix.fonts = {
    serif = { package = pkgs.poppins; name = "Poppins"; };
    sansSerif = { package = pkgs.poppins; name = "Poppins"; };
    monospace = { package = pkgs.maple-mono.truetype; name = "Maple Mono"; };
    emoji = { package = pkgs.noto-fonts-color-emoji; name = "Noto Color Emoji"; };
  };

  home-manager.sharedModules = [
    (_: {
      stylix.targets = {
        niri.enable = true;
        fish.enable = false;
        alacritty.enable = true;
        btop.enable = true;
        starship.enable = true;
        wayle.enable = true;
        rofi.enable = true;
      };
    })
  ];
}