# sb-custom

Custom Fedora Silverblue OCI images for personal use.



## TODO

- [ ] GNOME Extensions
- [ ] Flatpaks
  - [X] Enable Flathub
  - [X] Remove Fedora Flatpak Repo
  - [X] Switch over Fedora Flatpaks to Flathub Flatpaks
  - [X] Commonly Used Flatpaks (Steam, Lutris, etc)
  - [ ] Add built-in shortcuts for Mesa-git stuff
    - [X] Lutris
    - [ ] Steam
    - [ ] Heroic
- [X] GNOME Customization
  - [X] Download and enable adw-gtk3
  - [X] Enable GTK4 Dark
  - [X] Enable Min/Max buttons in titlebar
  - [X] Install Gradience Flatpak 
- [ ] Distrobox
   - [X] Create and enable a Fedora toolbox as default CLI
   - [ ] Install OBS in an arch distrobox and launch with AMDGPU-PRO for AMF support
   - [X] Auto update service 
- [X] Flatpak autoupdate service

## Images

### Foundation

```
rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/cyrv6737/foundation:latest
```

### Foundation-Plamsa

Do not directly pull this image. Rebase to `foundation:latest` first, run `foundation-setup`, then rebase to `foundation-plasma:latest`.

```
rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/cyrv6737/foundation-plasma:latest
```
