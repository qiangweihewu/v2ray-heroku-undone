FROM debian:sid

RUN apt update -y \
    	&& apt upgrade -y \
    	&& apt install -y wget unzip qrencode

ADD entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
CMD /opt/entrypoint.sh"
ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
