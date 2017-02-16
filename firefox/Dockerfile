FROM glittershark/desktop-base

COPY ./firefox-49.0.2-1-x86_64.pkg.tar.xz \
        ./icu-57.1-1-x86_64.pkg.tar.xz \
        ./hunspell-1.4.1-2-x86_64.pkg.tar.xz \
        ./shared-mime-info-1.7-1-x86_64.pkg.tar.xz \
        ./gdk-pixbuf2-2.36.4-1-x86_64.pkg.tar.xz \
        ./gtk-update-icon-cache-3.22.7-2-x86_64.pkg.tar.xz \
        ./gtk3-3.22.7-2-x86_64.pkg.tar.xz \
        ./orc-0.4.26-1-x86_64.pkg.tar.xz \
        ./ffmpeg-1:3.2.2-2-x86_64.pkg.tar.xz \
        /install/
RUN pacman --noconfirm -U \
        /install/icu-57.1-1-x86_64.pkg.tar.xz \
        /install/firefox-49.0.2-1-x86_64.pkg.tar.xz \
        /install/hunspell-1.4.1-2-x86_64.pkg.tar.xz \
        /install/shared-mime-info-1.7-1-x86_64.pkg.tar.xz \
        /install/gdk-pixbuf2-2.36.4-1-x86_64.pkg.tar.xz \
        /install/gtk-update-icon-cache-3.22.7-2-x86_64.pkg.tar.xz \
        /install/gtk3-3.22.7-2-x86_64.pkg.tar.xz \
        /install/orc-0.4.26-1-x86_64.pkg.tar.xz \
        /install/ffmpeg-1:3.2.2-2-x86_64.pkg.tar.xz 

COPY ./start.sh /
RUN useradd -d /home/firefox firefox
CMD /start.sh
