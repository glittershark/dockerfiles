FROM glittershark/arch-base

COPY ./cairo-infinality-ultimate-1.14.6-2-x86_64.pkg.tar.xz /install
COPY ./fontconfig-infinality-ultimate-2.11.95-4-x86_64.pkg.tar.xz /install
COPY ./freetype2-infinality-ultimate-2.6.3-4-x86_64.pkg.tar.xz /install

RUN pacman --noconfirm -U \
        /install/cairo-infinality-ultimate-1.14.6-2-x86_64.pkg.tar.xz \
        /install/fontconfig-infinality-ultimate-2.11.95-4-x86_64.pkg.tar.xz \
        /install/freetype2-infinality-ultimate-2.6.3-4-x86_64.pkg.tar.xz

USER install

RUN yaourt --noconfirm -S \
        ttf-dejavu \
        ttf-droid \
        ttf-liberation \
        ttf-meslo \
        ttf-symbola
USER root

# RUN ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
# RUN ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
# ADD ./local.conf /etc/fonts/local.conf
# RUN fc-cache -fv
