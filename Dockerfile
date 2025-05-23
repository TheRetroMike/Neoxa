FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install wget build-essential unzip -y
WORKDIR /opt/
RUN wget https://github.com/NeoxaChain/Neoxa/releases/download/v5.1.1.4/neoxad-5.1.1.4-linux64.zip
RUN unzip neoxad-5.1.1.4-linux64.zip
RUN chmod +x neoxad
RUN chmod +x neoxa-cli
RUN mv neoxad /usr/bin/
RUN mv neoxa-cli /usr/bin/
RUN rm neoxad-5.1.1.4-linux64.zip
CMD /usr/bin/neoxad -printtoconsole
