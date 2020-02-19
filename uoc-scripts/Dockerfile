FROM FROM python:3.6

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

RUN apt-get update && apt-get upgrade -y && apt-get -y install python-pip git python3-pip python3-dev 
    
# python dependencies
COPY ./uoc-scripts/*.txt /

#RUN python -m pip install -U pip
#RUN python -m pip install -r ./requirements.txt
RUN python3 -m pip install -U pip
#RUN pip3 install -r ./requirements3.txt
RUN cat ./requirements3.txt | xargs -n 1 pip3 install

RUN useradd -ms /bin/bash datasci

USER datasci
WORKDIR /home/datasci
