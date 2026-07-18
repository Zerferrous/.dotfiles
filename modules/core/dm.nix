{
  ...
}:
{
  programs.niri.enable = true;

  services.displayManager.ly = {
    enable = true;
    settings = {
      clock = "%F %T"; 
      animate = true; 
    };
  };
}