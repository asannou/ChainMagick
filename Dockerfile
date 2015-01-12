FROM centos

WORKDIR /workdir

RUN yum install -y unzip
RUN yum install -y ImageMagick

COPY command.sh /
COPY convert.sh /
