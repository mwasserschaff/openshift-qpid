FROM docker.io/centos:centos7
MAINTAINER Markus Wasserschaff markus.wasserschaff@telekom.de

RUN yum install -y epel-release && yum clean all

RUN  yum update -y && \
     yum install -y qpid-cpp-server python-qpid-qmf python-qpid \
     yum clean all

EXPOSE 5672

COPY assets/qpid-run.sh /

CMD ["/qpid-run.sh"]

