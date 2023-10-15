FROM ghcr.io/linuxserver/baseimage-kasmvnc:arch
RUN pacman -Syu git jdk-openjdk unzip webkit2gtk go --noconfirm
RUN cd tmp && sudo -u kasm-user git clone https://aur.archlinux.org/yay-git.git && cd yay-git && sudo -u kasm-user makepkg -si --noconfirm
RUN sudo -u kasm-user yay -S eclipse-jee duckdb-bin --noconfirm


COPY /root /

