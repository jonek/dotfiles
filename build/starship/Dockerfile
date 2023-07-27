FROM rust:1.71-bullseye

ENV STARSHIP_VERSION=1.15.0

RUN echo "current working directory: $(pwd)" && \
  rustc --version && \
  cargo --version && \
  curl --version && \
  tar --version

RUN curl -L https://github.com/starship/starship/archive/refs/tags/v${STARSHIP_VERSION}.tar.gz | tar -xz

WORKDIR /starship-${STARSHIP_VERSION}

RUN cargo build --release
