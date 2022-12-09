FROM ghcr.io/cgwalters/fedora-silverblue:37

RUN wget https://copr.fedorainfracloud.org/coprs/kylegospo/gnome-vrr/repo/fedora-$(rpm -E %fedora)/kylegospo-gnome-vrr-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_kylegospo-gnome-vrr.repo && \
rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:kylegospo:gnome-vrr mutter gnome-control-center gnome-control-center-filesystem && \
rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && \
rpm-ostree update \
            --uninstall rpmfusion-free-release-$(rpm -E %fedora).noarch \
            --uninstall rpmfusion-nonfree-release-$(rpm -E %fedora).noarch \
            --install rpmfusion-free-release \
            --install rpmfusion-nonfree-release

RUN rpm-ostree override remove mesa-va-drivers --install mesa-va-drivers-freeworld mesa-vdpau-drivers-freeworld && \
wget https://copr.fedorainfracloud.org/coprs/kylegospo/system76-scheduler/repo/fedora-$(rpm -E %fedora)/kylegospo-system76-scheduler-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_kylegospo-system76-scheduler.repo && \
rpm-ostree install distrobox gnome-tweaks ffmpeg ffmpeg-libs gstreamer1-plugin-openh264 gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly totem system76-scheduler VirtualBox akmod-VirtualBox libva-utils && \
systemctl enable com.system76.Scheduler.service && \
rpm-ostree cleanup -m && \
ostree container commit
