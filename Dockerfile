FROM openjdk:oraclelinux7

COPY minecraft-setup.sh /usr/local/bin/minecraft-setup.sh
COPY background-push.sh /usr/local/bin/background-push.sh

RUN chmod +x /usr/local/bin/minecraft-setup.sh
RUN chmod +x /usr/local/bin/background-push.sh

EXPOSE 25565

VOLUME /home/minecraft

CMD ["minecraft-setup.sh"]
