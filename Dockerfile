FROM node:8.11-stretch

# Install software dependancies
RUN apt-get update -qq --fix-missing \
  && apt-get install -qqy fdupes python3 python3-dev python3-pip \
	&& pip install --upgrade setuptools \
	&& pip install -qqq awscli

RUN aws --version
