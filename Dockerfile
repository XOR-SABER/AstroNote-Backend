FROM rust:1.83

WORKDIR /astroNote

COPY . .

RUN cargo install --path .

EXPOSE 3000

CMD ["/usr/local/cargo/bin/astronote"]