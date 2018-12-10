FROM ubuntu:16.04

LABEL company="SS" \
      maintainer="Saurav" \
      Location="Gurugram" \
      Version="0.0.1"

RUN apt-get update -y
# httpd is the package name for apache in Linux
# apache2 is the package name for apache in Ubuntu
RUN apt-get install apache2 -y
RUN apt-get install
RUN apt-get install wget -y
RUN apt-get install unzip -y

WORKDIR /tmp

RUN wget https://github.com/SauravSrivastav/Static-Website/archive/master.zip

RUN unzip master.zip
# Copy the static website to Apache deployment directory(/var/www/html)

RUN mv Static-Website-master/* /var/www/html/

EXPOSE 80
# CMD is runtime instruction, is excuted when we run container
ENTRYPOINT ["apachectl","-D", "FOREGROUND"]
