FROM haskell:8.10.7 as haskell
WORKDIR /wasp
COPY ["waspc/", "waspc/"]
RUN cabal update

WORKDIR /wasp/waspc
RUN cabal build

