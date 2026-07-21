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
    inputs.nixvim.homeManagerModules.nixvim   
    (_: {

      programs.nixvim = {
        enable = true;
        defaultEditor = true;

        imports = [
          ./settings.nix
        ]
      };

      # xdg.desktopEntries = {
      #   "nvim" = {
      #     name = "Neovim wrapper";
      #     genericName = "Text Editor";
      #     comment = "Edit text files";
      #     exec = "${pkgs.${terminal}}/bin/${terminal} --class \"nvim-wrapper\" -e nvim %F";
      #     icon = "nvim";
      #     mimeType = [
      #       "text/plain"
      #       "text/x-makefile"
      #     ];
      #     categories = [
      #       "Development"
      #       "TextEditor"
      #     ];
      #     terminal = false;
      #   };
      # };
    })
  ];
}