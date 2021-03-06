FROM rust:1-slim
ARG MDBOOK_VERSION="0.3.6"
LABEL maintainer="michael@dermitch.de" \
      version=$MDBOOK_VERSION

RUN cargo install mdbook --vers ${MDBOOK_VERSION}

WORKDIR /data
VOLUME ["/data"]
