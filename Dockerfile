# NAME: dclong/rustpython
FROM dclong/rust
# GIT: https://github.com/legendu-net/docker-rust.git

ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install rustpython \
    && /scripts/sys/purge_cache.sh
