FROM alpine:latest

RUN apk update && \
    apk add --no-cache bash curl traceroute

WORKDIR /app
COPY net.sh .
RUN chmod +x net.sh

CMD ["tail", "-f", "/dev/null"]
