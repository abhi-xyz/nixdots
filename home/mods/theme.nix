{ pkgs, ... }
:
let
  orchisTheme = pkgs.callPackage ../../custom/pkgs/orchis-theme/default.nix {};
in 
  {
  home = {
    # pointerCursor = {
    # name =  "Catppuccin-Mocha-Red";
    # package = pkgs.catppuccin-cursors.mochaRed;
    # gtk.enable = true;
    # x11.enable = true;
    # size = 32;
    # };
  };
  gtk = {
    enable = true;
    theme = {
      name = "Orchis-Pink-Dark-Dracula";
      package = (pkgs.orchis-theme.override {
        border-radius = 3;
        tweaks = [ "solid" "compact" "black" "primary" "macos" "submenu" "dracula" ];
      });
    };
    iconTheme = {
      name= "Papirus-Dark"; # Mint-Y-Pink
      package = (pkgs.catppuccin-papirus-folders.override {
        flavor = "mocha";
        accent = "red";
      }); # nordzy-icon-theme # cinnamon.mint-y-icons
    };
    cursorTheme = {
      name = "Catppuccin-Mocha-Red";
      package = pkgs.catppuccin-cursors.mochaRed;
      size = 14;
    };
    gtk2.extraConfig = "gtk-application-prefer-dark-theme = true";
    gtk3.extraConfig.gtk-application-prefer-dark-theme = true;
  };
}
/*
(pkgs.nightfox-gtk-theme.override {
colorVariants = [ "dark" ];
})
*/
