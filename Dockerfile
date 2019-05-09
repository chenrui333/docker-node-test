FROM node:8.11-stretch

# Install software dependancies
RUN apt-get update -qq --fix-missing \
  && apt-get install -qqy fdupes python python-dev python-pip \
	&& pip install --upgrade setuptools \
	&& pip install -qqq --upgrade awscli

RUN aws --version
