FROM centos:latest

MAINTAINER k-sh <tefutefu85@gmail.com>

ENV GITBUCKET_VERSION 4.10
ENV GITBUCKET_PREFIX /
ENV GITBUCKET_DIR /opt/gitbucket
ENV GITBUCKET_HOME /opt/gitbucket/data
ENV GITBUCKET_TMP /opt/gitbucket/tmp

RUN yum -y update
RUN yum -y install git
RUN yum -y install java-1.8.0-openjdk java-1.8.0-openjdk-devel

RUN mkdir -p $GITBUCKET_DIR
RUN mkdir -p $GITBUCKET_HOME
RUN mkdir -p $GITBUCKET_TMP

ADD https://github.com/gitbucket/gitbucket/releases/download/$GITBUCKET_VERSION/gitbucket.war $GITBUCKET_DIR/gitbucket.war

VOLUME $GITBUCKET_HOME

# Port for web page
EXPOSE 8080
# Port for SSH access to git repository
EXPOSE 29418

CMD ["sh", "-c", "/usr/bin/java -jar $GITBUCKET_DIR/gitbucket.war --prefix=$GITBUCKET_PREFIX --gitbucket.home=$GITBUCKET_HOME --temp_dir=$GITBUCKET_TMP"]

