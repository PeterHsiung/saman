FROM ubuntu

MAINTAINER zonghezhineng "zhubo@meicai.cn"
RUN DEBIAN_FRONTEND="noninteractive"

RUN apt-get update
RUN apt-get install -y supervisor 
RUN apt-get install -y openssh-server 
RUN apt-get install -y lsof 


CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]
