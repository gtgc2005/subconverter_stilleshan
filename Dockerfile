FROM tindy2013/subconverter:0.7.2
MAINTAINER Stille <stille@ioiox.com>

ENV VERSION 0.7.2

WORKDIR /base
RUN apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata

COPY groups.toml rulesets.toml /base/snippets/

EXPOSE 25500

WORKDIR /base

CMD subconverter
