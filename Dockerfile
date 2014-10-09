FROM node:0.10.32
MAINTAINER SequenceIQ

ENV SULTANS_SERVER_PORT 3000
RUN apt-get update
RUN apt-get install -y curl unzip
EXPOSE 3000
ADD start.sh /sultans/

CMD ["/sultans/start.sh"]
