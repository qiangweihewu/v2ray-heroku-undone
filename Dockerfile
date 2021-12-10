FROM alpine:latest
RUN apk add --no-cache --virtual .build-deps ca-certificates curl
ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
CMD /entrypoint.sh
ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
