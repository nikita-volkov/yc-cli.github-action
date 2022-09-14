FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install curl -y

# Download and install YC
RUN curl https://storage.yandexcloud.net/yandexcloud-yc/install.sh | \
    bash -s -- -i /opt/yandex-cloud -n
RUN ln -s /opt/yandex-cloud/bin/yc /usr/local/bin/yc

# Create profile
RUN yc config profile create github-action

COPY entrypoint.bash /usr/local/bin/

ENTRYPOINT ["entrypoint.bash"]
