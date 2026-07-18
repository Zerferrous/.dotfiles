{ pkgs, ... }:
{
  services.gnome.gnome-keyring.enable = true;
  
  security = {
    rtkit.enable = true;
    polkit.enable = true;
    apparmor = {
      enable = false;
      killUnconfinedConfinables = true;
      packages = [ pkgs.apparmor-profiles ];
    };

    protectKernelImage = true;
    acme.acceptTerms = true;
  };
}