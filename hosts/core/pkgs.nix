{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    cinnamon.nemo-with-extensions
    alsa-utils
    lxappearance
    feh
    ddcutil
    pulsemixer
    mpc-cli
    vim
    xarchiver
    ark
    zip
    unzip
    _7zz
    sops
    age
    gnupg
    pinentry-all # GnuPG’s interface to passphrase input
    cryptsetup

    vlc
    wget
    killall
    networkmanagerapplet
    tree
    htop
    cava
    xsel # for clipboard
    openssl_3_3
    fzf
    dconf
    fd
    cmake
    pkg-config
    gnumake
    gnupatch
    ripgrep
    playerctl
    xclip
    gcc
    pavucontrol
    font-manager
    ffmpeg-full

    xorg.libxcb
    xorg.libXrender
    xorg.libXfixes
    xorg.libXext
    xorg.libX11
    xorg.libXft
    xorg.libXinerama

    jellyfin
    jellyfin-web
    jellyfin-ffmpeg
  ];
}
