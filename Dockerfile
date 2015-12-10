FROM centos:7

MAINTAINER SDiedel <stefan@diedel.net>

RUN yum install -y http://mirror.pnl.gov/epel/7/x86_64/e/epel-release-7-5.noarch.rpm \
    && yum update -y; yum clean all \
    && yum install -y python-cheetah unzip supervisor cifs-utils \
    && yum clean all

RUN curl -L https://github.com/SiCKRAGETV/SickRage/archive/master.zip -o /SickRage.zip \
    && unzip /SickRage.zip \
    && rm -f /SickRage.zip

ADD supervisord.conf /etc/supervisord.conf
ADD sickrage.ini /etc/supervisord.d/sickrage.ini
ADD start.sh /usr/sbin/start.sh
RUN chmod 755 /usr/sbin/start.sh

VOLUME /config
VOLUME /data
VOLUME /downloads

EXPOSE 8081 

ENTRYPOINT ["/usr/sbin/start.sh"]
