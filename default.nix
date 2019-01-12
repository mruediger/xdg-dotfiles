{ pkgs, ... }:
{
  environment.variables.XDG_CONFIG_DIRS = [ "${toString ./.}" ];
  environment.systemPackages = with pkgs; [
    i3lock
    brightnessctl
    termite
  ];

  hardware.brightnessctl.enable = true;
}
