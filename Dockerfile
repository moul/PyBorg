FROM moul/python-dev
MAINTAINER Manfred Touron "m@42.am"

ADD . /pyborg/
WORKDIR /pyborg/

CMD ./boot.sh
