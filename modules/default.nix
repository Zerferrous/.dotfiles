{
  host,
  lib,
  ...
}:
let 
  vars = import ../hosts/${host}/variables.nix;
in
{
  imports = [
    ./core/default.nix
  ];
}