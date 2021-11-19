FROM alpine:latest
WORKDIR /raptoreum-exporter
ADD ./ /raptoreum-exporter
RUN apk add bash curl lighttpd
ADD ./lighttpd.conf /etc/lighttpd/lighttpd.conf
CMD [ "./server.sh" ]
