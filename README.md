# sb-custom

Custom Fedora Silverblue OCI images for personal use.



# TODO

Checklists for various current and planned images.

## "Foundation" Image
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
- [ ] Name

## "Workstation" Image
- [ ] Derive from "Foundation"
- [ ] Remove gaming related flatpaks and layers
- [ ] Name

## Fedora Serverblue
- [ ] Remove a bunch of stuff idk

## Images

### Foundation

```
rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/cyrv6737/foundation:latest
```

**Manual Intervention:** 

- After the first-time boot script runs, open Terminal -> Preferences, then create a new profile called `Host`. No other configuration is needed. This will allow you to easily open a host terminal when necessary while keeping the default shell the Fedora Distrobox.

- Manually install the system76-scheduler GNOME Extension to properly use the enabled systemd service.

### Foundation-Plamsa

Do not directly pull this image. Rebase to `foundation:latest` first, run `foundation-setup`, then rebase to `foundation-plasma:latest`.

```
rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/cyrv6737/foundation-plasma:latest
```
