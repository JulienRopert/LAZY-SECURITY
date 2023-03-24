#!/bin/bash

pip install alembic
pip install asn1crypto
pip install attrs
pip install autobahn
pip install Automat
pip install Babel
pip install backports-abc
pip install backports.functools-lru-cache
pip install backports.shutil-get-terminal-size
pip install bcrypt
pip install beautifulsoup4
pip install blinker
pip install bottle
pip install cbor
pip install certifi
pip install Chameleon
pip install chardet
pip install CherryTree
pip install Click
pip install colorama
pip install configparser
pip install constantly
pip install cryptography
pip install cssselect
pip install Cython
pip install dbus-python
pip install decorator
pip install deprecation
pip install Django
pip install dnspython
pip install EditorConfig
pip install Elixir
pip install entrypoints
pip install enum34
pip install faradaysec
pip install feedparser
pip install filedepot
pip install filteralchemy
pip install Flask
pip install Flask-BabelEx
pip install Flask-Classful
pip install Flask-KVSession
pip install Flask-Login
pip install Flask-Mail
pip install Flask-Principal
pip install Flask-Restless
pip install Flask-Security
pip install Flask-Session
pip install Flask-SQLAlchemy
pip install Flask-WTF
pip install FormEncode
pip install future
pip install futures
pip install html2text
pip install html5lib
pip install hupper
pip install hyperlink
pip install idna
pip install impacket
pip install incremental
pip install ipaddress
pip install IPy
pip install ipython
pip install ipython-genutils
pip install itsdangerous
pip install Jinja2
pip install jsbeautifier
pip install keyring
pip install keyrings.alt
pip install lxml
pip install lz4
pip install Mako
pip install MarkupSafe
pip install marshmallow
pip install marshmallow-sqlalchemy
pip install mimerender
pip install netaddr
pip install nplusone
pip install numpy
pip install olefile
pip install packaging
pip install paramiko
pip install passlib
pip install Paste
pip install PasteDeploy
pip install PasteScript
pip install pathlib2
pip install peepdf
pip install pefile
pip install pexpect
pip install pickleshare
pip install Pillow
pip install plaster
pip install plaster-pastedeploy
pip install prettytable
pip install prompt-toolkit
pip install psycopg2
pip install py-ubjson
pip install pyasn1
pip install pyasn1-modules
pip install pycairo
pip install pycrypto
pip install pycryptodomex
pip install pydot
pip install pyenchant
pip install Pygments
pip install PyGObject
pip install pyinotify
pip install pylibemu
pip install pymssql
pip install PyNaCl
pip install pyOpenSSL
pip install pyparsing
pip install pypcapfile
pip install pypng
pip install PyQRCode
pip install pyquery
pip install pyramid
pip install PySocks
pip install python-dateutil
pip install python-editor
pip install python-magic
pip install python-mimeparse
pip install python-openid
pip install python-snappy
pip install pythonaes
pip install PyTrie
pip install pytz
pip install PyV8
pip install pyxdg
pip install PyYAML
pip install qrcode
pip install repoze.lru
pip install requests
pip install scandir
pip install scapy
pip install scgi
pip install selenium
pip install service-identity
pip install simplegeneric
pip install simplejson
pip install simplekv
pip install singledispatch
pip install sip
pip install six
pip install soupsieve
pip install speaklater
pip install SQLAlchemy
pip install sqlalchemy-schemadisplay
pip install sqlparse
pip install syslog-rfc5424-formatter
pip install Tempita
pip install termcolor
pip install tornado
pip install tqdm
pip install traitlets
pip install translationstring
pip install trollius
pip install Twisted
pip install txaio
pip install typing
pip install u-msgpack-python
pip install Unidecode
pip install urllib3
pip install uTidylib
pip install venusian
pip install waitress
pip install wcwidth
pip install webargs
pip install webencodings
pip install WebOb
pip install websocket-client
pip install WebTest
pip install Werkzeug
pip install wifite
pip install wsaccel
pip install WTForms
pip install zope.component
pip install zope.deprecation
pip install zope.event
pip install zope.hookable
pip install zope.interface
pip install bs4
pip install google
pip install googlesearch-python
pip install beautifulsoup4


# Demander le mot de passe sudo une fois pour tout le script
sudo echo "Exécution avec droits administrateurs"

# Mettre à jour les dépôts
sudo apt update

# Mettre à jour les paquets existants
sudo apt upgrade -y

# Installer OpenVAS
sudo apt install -y openvas

# Exécuter gvm-setup pour configurer OpenVAS
sudo gvm-setup

# Mettre à jour les feeds
sudo gvm-feed-update

sudo mv /lib

# Vérifier la configuration de l'installation
sudo gvm-check-setup

# Démarrer le service GVM
sudo gvm-start

# Changer le mot de passe de l'utilisateur admin
sudo -E -u _gvm -g _gvm gvmd --user=admin --new-password=admin
