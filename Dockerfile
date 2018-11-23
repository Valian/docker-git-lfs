FROM alpine

RUN apk --no-cache add openssl git curl \
    && curl -sLO https://github.com/git-lfs/git-lfs/releases/download/v2.6.0/git-lfs-linux-amd64-v2.6.0.tar.gz \
    && tar -zxf git-lfs-linux-amd64-v2.6.0.tar.gz \
    && mv git-lfs-2.6.0/git-lfs /usr/bin/ \
    && rm -rf git-lfs-2.6.0 \
    && rm -rf git-lfs-linux-amd64-2.6.0.tar.gz

WORKDIR /src
CMD ["git-lfs", "--help"]
