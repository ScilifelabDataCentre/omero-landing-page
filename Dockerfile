# Use alpine Linux, download desired version of HUGO and build html files
FROM alpine:3.23.3 AS build
RUN apk update && apk upgrade
RUN apk add --no-cache wget=1.25.0-r2
ARG HUGO_VERSION="0.157.0"
ARG HUGO_ENV_ARG
WORKDIR /src
COPY ./hugo/ /src
RUN set -eux; \
    wget --quiet "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"; \
    wget --quiet "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_checksums.txt"; \
    # extract the relevant checksum line and verify the tarball
    grep "hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" "hugo_${HUGO_VERSION}_checksums.txt" > hugo.checksum; \
    sha256sum -c hugo.checksum; \
    tar xzf "hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"; \
    rm -f "hugo_${HUGO_VERSION}_Linux-64bit.tar.gz" "hugo_${HUGO_VERSION}_checksums.txt" hugo.checksum; \
    mv hugo /usr/bin; \
    chmod 755 /usr/bin/hugo; \
    mkdir /target; \
    hugo -d /target -e "${HUGO_ENV_ARG}"

# Serve the generated html using nginx
FROM nginxinc/nginx-unprivileged:alpine
RUN sed -i '3 a\    absolute_redirect off;' /etc/nginx/conf.d/default.conf && \
    sed -i '4 a\    add_header X-Frame-Options SAMEORIGIN always;' /etc/nginx/conf.d/default.conf && \
    sed -i 's/#error_page  404/error_page  404/' /etc/nginx/conf.d/default.conf
COPY --from=build /target /usr/share/nginx/html

EXPOSE 8080