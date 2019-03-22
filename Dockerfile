FROM rust:1.33-slim
ARG MDBOOK_VERSION="0.2.3"
LABEL maintainer="mps299792458@gmail.com" \
      version=$MDBOOK_VERSION

RUN cargo install mdbook --vers ${MDBOOK_VERSION}

WORKDIR /data
VOLUME ["/data"]
