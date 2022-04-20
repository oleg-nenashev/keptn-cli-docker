
FROM alpine:3.15.0

ARG CLI_VERSION=0.14.1
ARG CLI_DISTRO=linux-amd64

RUN wget https://github.com/keptn/keptn/releases/download/${CLI_VERSION}/keptn-${CLI_VERSION}-${CLI_DISTRO}.tar.gz 
RUN tar -xvf keptn-${CLI_VERSION}-${CLI_DISTRO}.tar.gz
RUN chmod +x keptn-${CLI_VERSION}-${CLI_DISTRO}
RUN mv keptn-${CLI_VERSION}-${CLI_DISTRO} /usr/local/bin/keptn
RUN rm -rf keptn-${CLI_VERSION}-${CLI_DISTRO}.tar.gz
RUN keptn version

ADD launcher.sh /usr/local/bin/keptn-launcher.sh
RUN mv /usr/local/bin/keptn-launcher.sh /usr/local/bin/keptn-launcher
RUN chmod +x /usr/local/bin/keptn-launcher

ENTRYPOINT ["sh", "-e", "/usr/local/bin/keptn-launcher"]
