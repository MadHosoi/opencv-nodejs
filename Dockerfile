FROM node:latest

RUN apt-get update
RUN apt-get -y install build-essential
RUN apt-get -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get -y install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
RUN apt-get -y install libopencv-dev

RUN apt-get -y install imagemagick

WORKDIR /app/

COPY ./app/ /app/

EXPOSE 8080
RUN npm install
RUN ln /dev/null /dev/raw1394
# RUN npm start