{
  pkgs,
  inputs,
  host,
  ...
}:
let
  inherit (import ../../hosts/${host}/variables.nix)
    username
    editor
    terminal
    browser
    shell
    ;
in
{
  imports = [
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    overwriteBackup = true;
    backupFileExtension = "backup";
    users.${username} = {
      programs.home-manager.enable = true;

      home = {
        username = "${username}";
        homeDirectory = "/home/${username}";
        stateVersion = "26.05"; # Do not change!
        sessionVariables = {
          EDITOR =
            if (editor == "nixvim" || editor == "neovim" || editor == "nvchad") then
              "nvim"
            else if editor == "vscode" then
              "code"
            else
              "vim";
          BROWSER = "${browser}";
          TERMINAL = "${terminal}";
        };
      };
    };
  };

  users = {
    mutableUsers = true;

    users.${username} = {
      isNormalUser = true;

      initialPassword = "0000";

      extraGroups = [
        "wheel"
        "input"
        "networkmanager"
        "video"
        "audio"
        "sfvbox" # in VM
      ];

      shell = pkgs.${shell};
      ignoreShellProgramCheck = true;
    };
  };
  nix.settings.allowed-users = [ "${username}" ];
}