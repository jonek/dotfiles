FROM rust:1.71-bullseye

ENV ALACRITTY_VERSION=0.12.2

RUN echo "current working directory: $(pwd)" && \
  rustc --version && \
  cargo --version && \
  curl --version && \
  tar --version

RUN apt-get update && apt-get install -y \
  cmake \
  pkg-config\
  libfreetype6-dev\
  libfontconfig1-dev\
  libxcb-xfixes0-dev\
  libxkbcommon-dev\
  python3

RUN curl -L https://github.com/alacritty/alacritty/archive/refs/tags/v${ALACRITTY_VERSION}.tar.gz | tar -xz

WORKDIR /alacritty-${ALACRITTY_VERSION}

RUN cargo build --release
