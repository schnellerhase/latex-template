FROM texlive/texlive

RUN apt update
RUN apt install build-essential -y

# Setup cargo
RUN curl https://sh.rustup.rs -sSf | bash -s -- -y
ENV PATH="/root/.cargo/bin:${PATH}"

# Install tex-fmt
RUN cargo install tex-fmt
