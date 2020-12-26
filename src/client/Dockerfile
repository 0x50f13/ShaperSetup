FROM alpine:3.7
RUN apk add --no-cache "bash" curl
COPY get.sh get.sh
RUN chmod 755 get.sh
RUN mv get.sh /bin/get.sh
ENTRYPOINT ["/bin/get.sh"]
