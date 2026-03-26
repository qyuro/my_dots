# ❄️ My NixOS Config for niri and noctalia-shell


## Install process

From Nixos.org /*not nixos.com*/ instrall .iso file.Boot in iso file.

```
  cfdisk /dev/sda # or another disk to partions disk
  mkfs.ext4 /dev/sda2;mount /dev/sda2 /mnt
  mkfs.vfat -F32 /dev/sda1; mount /dev/sda1 --mkdir /mnt/boot;
  mkswap /dev/sda3 ;swapon /dev/sda3;
```
By default Nix.iso dont have git,you need to intall system with it;

```
  nixos-generate-config --root /mnt
  #And add programs.git.enable  in configuration.nix and   nix.settings.experimental-features = [ "nix-command" "flakes" ];
;
  reboot
```

After reboot and loging in nixos, regenerate configuration.nix

```
sudo nixos-rebuild switch
```

```
   git clone https://github.com/qyuro/my_dots
  cd ./my_dots;
  sudo nixos-rebuild switch --flake .#nixos;
```

Enjoy!

