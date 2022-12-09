FROM ghcr.io/cgwalters/fedora-silverblue:37

# Enable RPM Fusion
RUN rpm-ostree install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm && \
rpm-ostree install rpmfusion-nonfree-release rpmfusion-free-release --uninstall=rpmfusion-free-release-$(rpm -E %fedora)-1.noarch --uninstall=rpmfusion-nonfree-release-$(rpm -E %fedora)-1.noarch

# Install gnome-vrr MR (kylegospo COPR)
RUN wget https://copr.fedorainfracloud.org/coprs/kylegospo/gnome-vrr/repo/fedora-$(rpm -E %fedora)/kylegospo-gnome-vrr-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_kylegospo-gnome-vrr.repo && \
rpm-ostree override replace --experimental --from repo=copr:copr.fedorainfracloud.org:kylegospo:gnome-vrr mutter gnome-control-center gnome-control-center-filesystem

# Install mesa-freeworld for proper video decode in native firefox
RUN rpm-ostree override remove mesa-va-drivers --install=mesa-va-drivers-freeworld --install=mesa-vdpau-drivers-freeworld

# Install and enable System76 Scheduler (kylegospo COPR)
RUN wget https://copr.fedorainfracloud.org/coprs/kylegospo/system76-scheduler/repo/fedora-$(rpm -E %fedora)/kylegospo-system76-scheduler-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_kylegospo-system76-scheduler.repo && \
rpm-ostree install system76-scheduler && \
systemctl enable com.system76.Scheduler.service

# Install and enable adw-gtk3
RUN wget https://copr.fedorainfracloud.org/coprs/nickavem/adw-gtk3/repo/fedora-$(rpm -E %fedora)/nickavem-adw-gtk3-fedora-$(rpm -E %fedora).repo -O /etc/yum.repos.d/_copr_nickavem-adw-gtk3.repo && \
rpm-ostree install adw-gtk3

# Install extra packages and finalize
RUN rpm-ostree install distrobox gnome-tweaks ffmpeg ffmpeg-libs gstreamer1-plugin-openh264 gstreamer1-plugins-bad-freeworld gstreamer1-plugins-ugly totem libva-utils NetworkManager-sstp && \
sed -i 's/#AutomaticUpdatePolicy.*/AutomaticUpdatePolicy=stage/' /etc/rpm-ostreed.conf && \
systemctl enable rpm-ostreed-automatic.timer && \
rpm-ostree cleanup -m && \
ostree container commit
