FROM ubuntu:bionic

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y autoremove libreoffice-calc libreoffice-writer libreoffice-core libreoffice-math pidgin thunderbird transmission-common transmission-gtk
RUN apt-get -y install apt-utils git curl geany terminator python3-pip python3-dev libcurl4-openssl-dev libssl-dev pkg-config libcairo2-dev

# python envs
ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    PEC_PATH=/home/datasci/

COPY ./uoc-scripts/*.sh /usr/bin/
RUN chmod +x /usr/bin/get_content.sh

# python dependencies
COPY ./uoc-scripts/paquets.txt /

RUN pip3 install -r paquets.txt

RUN useradd -ms /bin/sh datasci
RUN usermod -aG sudo datasci
USER datasci

WORKDIR /home/datasci
