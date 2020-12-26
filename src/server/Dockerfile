FROM alpine:3.7
FROM andrewerr/meowmeow-beta:latest
SHELL ["/bin/sh", "-c"]
RUN export PATH=$PATH:/bin/:/sbin/:/usr/sbin/:/usr/bin/
RUN /sbin/apk add --no-cache "bash" iftop iptables ncurses iproute2
COPY build.sh build.sh
COPY Buildfile Buildfile
RUN  chmod 755 build.sh
# Configure web-server
RUN rm -rf /etc/MeowMeow/meow.conf
RUN rm -rf /etc/MoewMeow/routes.conf
COPY configs/meow.conf /etc/MeowMeow/meow.conf
COPY configs/routes.conf /etc/MoewMeow/routes.conf
RUN mv /bin/boot.sh /bin/MeowMeow
# Run server
ENTRYPOINT ["./build.sh", "all"]

