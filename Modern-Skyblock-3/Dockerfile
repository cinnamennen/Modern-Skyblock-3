FROM alpine:3.7

RUN apk --update add openjdk8-jre

EXPOSE 25565

ADD https://minecraft.curseforge.com/projects/modern-skyblock-3-departed/files/2536782/download /

RUN mkdir /server

RUN unzip download -d /server

WORKDIR /server

CMD java -Xms4096M -Xmx4096M -jar forge-1.12.2-14.23.2.2611-universal.jar nogui pause