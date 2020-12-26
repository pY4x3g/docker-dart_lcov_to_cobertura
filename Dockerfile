FROM google/dart:2.10.4
USER root
RUN apt-get update && apt-get install -y python3 python3-pip
RUN python3 -m pip install setuptools
RUN adduser --disabled-password --gecos "" dart
RUN apt-get update && apt-get install -y libsqlite3-dev
RUN (cd /usr/bin/ && curl -O https://raw.githubusercontent.com/eriwen/lcov-to-cobertura-xml/master/lcov_cobertura/lcov_cobertura.py)
USER dart
