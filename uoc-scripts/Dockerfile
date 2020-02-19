FROM python:3.6

# python envs
ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    PEC_PATH=/home/datasci/

# UOC PEC scripts
COPY ./uoc-scripts/*.sh /usr/bin/

# python dependencies
COPY ./uoc-scripts/*.txt /

RUN pip3 install -r paquets.txt

RUN useradd -ms /bin/bash datasci

USER datasci

WORKDIR /home/datasci
