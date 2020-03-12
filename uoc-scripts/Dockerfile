FROM ubuntu:bionic

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y autoremove libreoffice-calc libreoffice-writer libreoffice-core libreoffice-math pidgin thunderbird transmission-common transmission-gtk
RUN apt-get -y install apt-utils git curl geany terminator python3-pip python3-dev libcurl4-openssl-dev libssl-dev pkg-config libcairo2-dev libcups2-dev intltool

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


RUN curl https://bootstrap.pypa.io/get-pip.py | python3
# python dependencies
RUN pip3 install pycodestyle pycodestyle_magic flake8 asn1crypto attrs Automat backcall bleach certifi chardet constantly cryptography cssselect cycler decorator defer defusedxml distro-info entrypoints future geoplotlib googlemaps httplib2 hyperlink idna incremental ipykernel ipython ipython-genutils ipywidgets jedi Jinja2 joblib jsonschema jupyter jupyter-client jupyter-console jupyter-core keyring keyrings.alt kiwisolver launchpadlib lazr.restfulclient lazr.uri lxml MarkupSafe matplotlib mistune nbconvert nbformat netifaces networkx notebook numpy oauth oauthlib olefile pandas pandocfilters parsel parso pexpect pickleshare Pillow prompt-toolkit psutil ptyprocess pyasn1 pyasn1-modules pycairo pycodestyle_magic pycrypto pycurl PyDispatcher pyglet Pygments PyHamcrest pyOpenSSL pyparsing pyrsistent PySocks python-dateutil python-debian python-debianbts python-louvain python-magic pytz pyxdg PyYAML pyzmq qtconsole queuelib reportlab requests requests-oauthlib requests-unixsocket scikit-learn scipy Scrapy seaborn SecretStorage Send2Trash simplejson six sklearn terminado testpath tornado traitlets tweepy Twisted urllib3 w3lib wadllib wcwidth webencodings widgetsnbextension xcffib zope.interface

RUN useradd -ms /bin/sh datasci
RUN usermod -aG sudo datasci
USER datasci

WORKDIR /home/datasci
