# sb-custom

Custom Fedora Silverblue OCI images for personal use.



## TODO

- [ ] GNOME Extensions
- [X] Flatpaks
  - [X] Enable Flathub
  - [X] Remove Fedora Flatpak Repo
  - [X] Switch over Fedora Flatpaks to Flathub Flatpaks
  - [X] Commonly Used Flatpaks (Steam, Lutris, etc)
- [ ] GNOME Customization
- [ ] Distrobox
   - [X] Create and enable a Fedora toolbox as default CLI
   - [ ] Install OBS in an arch distrobox and launch with AMDGPU-PRO for AMF support
   - [ ] Auto update service 
- [ ] Flatpak autoupdate service

## Images

### Foundation

```
rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/cyrv6737/foundation:latest
```
