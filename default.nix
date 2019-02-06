{ pkgs, ... }:
{
  environment.variables.XDG_CONFIG_DIRS = [ "${toString ./.}" ];
  environment.systemPackages = with pkgs; [
    brightnessctl
    i3lock
    termite
  ];

  hardware.brightnessctl.enable = true;

  services.xserver = {
    windowManager = {
      default = "awesome";
      awesome = {
        enable = true;
        noArgb = true;
      };
    };
  };
}
