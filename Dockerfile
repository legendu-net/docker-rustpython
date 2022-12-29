# NAME: dclong/rustpython
FROM rust:1.66-alpine3.17 as builder

WORKDIR /workdir

RUN apk --no-cache add musl-dev
RUN cargo install --git https://github.com/RustPython/RustPython --features freeze-stdlib --profile release

FROM alpine:3.17

RUN apk --no-cache add musl

COPY --from=builder /usr/local/cargo/bin/rustpython /usr/local/bin/rustpython
ENTRYPOINT [ "/usr/local/bin/rustpython" ]
