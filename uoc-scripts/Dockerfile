FROM python:3.6

# python envs
ENV PYTHONFAULTHANDLER=1 \
    PYTHONUNBUFFERED=1 \
    PYTHONHASHSEED=random \
    PIP_NO_CACHE_DIR=off \
    PIP_DISABLE_PIP_VERSION_CHECK=on \
    PIP_DEFAULT_TIMEOUT=100 \
    PEC_PATH=/home/datasci/

COPY ./uoc-scripts/get_pec.sh ./uoc-scripts/get_sol_pec.sh /usr/bin/
RUN chmod +x /usr/bin/get_pec.sh /usr/bin/get_sol_pec.sh


# python dependencies
COPY ./uoc-scripts/paquets.txt /

RUN python -m pip install -r paquets.txt

RUN useradd -ms /bin/sh datasci
RUN usermod -aG sudo datasci
USER datasci

WORKDIR /home/datasci
