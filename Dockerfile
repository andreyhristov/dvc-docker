FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    wget bash git \
    && apt-get clean && \
    rm -rf /var/lib/apt/lists/*


RUN wget https://dvc.org/deb/dvc.list -O /etc/apt/sources.list.d/dvc.list
RUN apt-get update \
    && apt-get install -y dvc \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV AWS_ACCESS_KEY_ID somekey
ENV AWS_SECRET_ACCESS_KEY somesecretkey
ENV AWS_DEFAULT_REGION someregion

#ENTRYPOINT ["/bin/bash", "-e"]
