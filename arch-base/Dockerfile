FROM greyltc/archlinux
RUN pacman -Syu --noconfirm
RUN pacman --noconfirm -S sudo base-devel yajl
RUN echo '%sudo ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN groupadd sudo

RUN mkdir -p /install
RUN useradd -G sudo install
RUN chown install:install /install

# Install package-query (for yaourt)
ADD https://aur.archlinux.org/cgit/aur.git/snapshot/package-query.tar.gz /install/package-query.tar.gz
WORKDIR /install
RUN chown install:install package-query.tar.gz
USER install
RUN tar -xzf package-query.tar.gz
WORKDIR package-query
RUN yes | makepkg -i
USER root

# Install yaourt
ADD https://aur.archlinux.org/cgit/aur.git/snapshot/yaourt.tar.gz /install/yaourt.tar.gz
WORKDIR /install
RUN chown install:install yaourt.tar.gz
USER install
RUN tar -xzf yaourt.tar.gz
WORKDIR yaourt
RUN yes | makepkg -i
USER root

WORKDIR /
