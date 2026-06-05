FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV TZ=Asia/Shanghai

WORKDIR /opt/FutuOpenD

RUN apt-get update && apt-get install -y \
    ca-certificates \
    curl \
    tar \
    bash \
    tzdata \
    libstdc++6 \
    libgcc1 \
    libglib2.0-0 \
    libx11-6 \
    libxext6 \
    libxrender1 \
    libxi6 \
    libxrandr2 \
    libxtst6 \
    libnss3 \
    libdbus-1-3 \
    libfontconfig1 \
    libfreetype6 \
    libasound2 \
    libcurl4 \
    procps \
    net-tools \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L "https://softwaredownload.futunn.com/Futu_OpenD_10.7.6708_Ubuntu18.04.tar.gz" -o /tmp/futu_opend.tar.gz \
    && tar -xzf /tmp/futu_opend.tar.gz -C /opt/FutuOpenD --strip-components=1 \
    && mv /opt/FutuOpenD/Futu_OpenD_10.7.6708_Ubuntu18.04 /opt/FutuOpenD/bin \
    && rm -f /tmp/futu_opend.tar.gz

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh \
    && chmod +x /opt/FutuOpenD/bin/FutuOpenD

EXPOSE 11111

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]