{
  lib,
  self,
  inputs,
  host,
  pkgs,
  ...
}:
let
  inherit (import ../../hosts/${host}/variables.nix)
    timezone
    locale
    extraLocale
    ;
in
{
  time.timeZone = "${timezone}";

  i18n.defaultLocale = "${locale}";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "${extraLocale}";
    LC_IDENTIFICATION = "${extraLocale}";
    LC_MEASUREMENT = "${extraLocale}";
    LC_MONETARY = "${extraLocale}";
    LC_NAME = "${extraLocale}";
    LC_NUMERIC = "${extraLocale}";
    LC_PAPER = "${extraLocale}";
    LC_TELEPHONE = "${extraLocale}";
    LC_TIME = "${extraLocale}";
  };

  environment.variables = {
    templates = "${self}/dev-shells";
    NIXOS_OZONE_WL = "1";

    XDG_CACHE_HOME = "$HOME/.cache";
    XDG_CONFIG_HOME = "$HOME/.config";
    XDG_DATA_HOME = "$HOME/.local/share";
    XDG_BIN_HOME = "$HOME/.local/bin";
  };

  nixpkgs = {
    config = {
      allowUnfree = true;
    };
  };

  system.stateVersion = "26.05"; 
}
