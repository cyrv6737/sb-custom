# sb-custom

Custom Fedora Silverblue OCI images for personal use.



## TODO

- [X] Flatpaks
  - [X] Enable Flathub
  - [X] Remove Fedora Flatpak Repo
  - [X] Switch over Fedora Flatpaks to Flathub Flatpaks
  - [X] Commonly Used Flatpaks (Steam, Lutris, etc)
  - [X] Replace native Firefox with flatpak version *NOTE: I am unsure if I want to keep this as a permanent replacement. This will require testing.*
  - [X] OBS Studio
    - [X] VKCapture
    - [X] Gstreamer-VAAPI
  - [X] Add built-in shortcuts for Mesa-git stuff
    - [X] Lutris
    - [X] Steam
    - [X] Heroic
- [X] GNOME Customization
  - [X] Download and enable adw-gtk3
  - [X] Enable GTK4 Dark
  - [X] Enable Min/Max buttons in titlebar
  - [X] Install Gradience Flatpak 
- [X] Distrobox
   - [X] Create and enable a Fedora toolbox as default CLI
   - [X] Auto update service 
- [X] Flatpak autoupdate service
- [ ] Automate adding a Host profile to gnome-terminal

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
