# NAME: dclong/rustpython
FROM dclong/rust
# GIT: https://github.com/dclong/docker-rust.git

ENV PATH=/root/.cargo/bin:$PATH
RUN cargo install --git https://github.com/RustPython/RustPython \
    && /scripts/sys/purge_cache.sh
