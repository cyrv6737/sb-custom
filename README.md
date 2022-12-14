# Images

Custom Fedora Silverblue OCI images for personal use.

## Foundation

An image created with the intention of giving a complete hassle free desktop experience OOTB.

```
rpm-ostree rebase --experimental ostree-unverified-registry:ghcr.io/cyrv6737/foundation:latest
```

### Features

- Fedora Silverblue base image pulled from the new quay.io registry
- RPMFusion
- Thumbnails for video files in Nautilus
- Experimental gnome-vrr MR, [COPR maintained by kylegospo](https://copr.fedorainfracloud.org/coprs/kylegospo/gnome-vrr/)
- System76-scheduler installed and enabled by default, [COPR maintained by kylegospo](https://copr.fedorainfracloud.org/coprs/kylegospo/system76-scheduler/)
- `mesa-freeworld` to enable complete video codec decode
- Firefox removed from base image and reinstalled as a Flatpak
  - Subject to change with testing
- `adw-gtk3` theme installed and enabled by default, [COPR maintained by nickavem](https://copr.fedorainfracloud.org/coprs/nickavem/adw-gtk3/)
- Problematic version of rpm-ostree patched
- Toolbox removed and replaced with the superior Distrobox
- Udev rules for Solaar and Steam
- Default terminal session replaced with a Fedora 37 Distrobox
- Auto Updates
  - Staged base system upgrades
  - Flatpak upgrades
  - All Distrobox container upgrades (AUR not included when using Arch containers)
- Duperemove service that runs weekly
- First-time boot script:
  - Flatpaks
    - Removes Fedora Flatpak repo
    - Installs Flathub and Flathub-beta repos
    - Removes junk Flatpaks
    - Replaces remaining Fedora Flatpaks with Flathub ones
    - Installs: Gradience, Drawing, Extension Manager, Discord, Steam, Lutris, OBS, Protontricks, Heroic, LibreOffice, Protonup-QT, Prism Launcher, Font Downloader, Celluloid, and Flatseal
    - Steam: additionally installs MangoHud, vkBasalt, gamescope, OBSVkCapture, Proton, Proton-Experimental, Proton-GE
    - OBS: additionally installs Gstreamer, Gstreamer-VAAPI, and OBSVkCapture
    - Adds Application Shortcuts to launch Steam, Lutris, and Heroic with Mesa-git
  - Disable Mouse Acceleration
  - Enable Min/Max/Close on the right of the Title Bar


### Manual Intervention

- **System76-scheduler**: The user will need to install the [system76-scheduler gnome extension to make this work 100%](https://extensions.gnome.org/extension/4854/system76-scheduler/)
- **Host gnome-terminal session**: The user will need to duplicate the `Default` gnome-terminal profile in `Perferences` and until the custom command option in the last tab. This will add a profile to run commands on the host Silverblue installation.
- **Duperemove Service**: User will have to enable this service manually after the setup runs.
- **Steam Flatpak**: Steam **must** use one of these Proton versions that are labelled as "community builds". Otherwise you will run into sandboxing problems. I recommend setting either Proton-GE or Proton-Experimental community build as the default Proton runner.

### TODO
- [ ] Name

## "Workstation" Image

**Soon**
