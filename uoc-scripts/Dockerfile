FROM amd64/ubuntu:latest

# python envs
ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100

# UOC PEC scripts
COPY ./uoc-scripts/*.sh /usr/bin/


RUN apt-get update && apt-get upgrade && apt-get -y install python-pip git python3-pip python3-dev 
    
# python dependencies
COPY ./uoc-scripts/*.txt /

RUN python -m pip install -U pip
RUN python -m pip install -r ./requirements.txt
RUN python3 -m pip install -U pip
RUN python3 -m pip install -r ./requirements3.txt

RUN useradd -ms /bin/bash datasci

USER datasci
WORKDIR /home/datasci
