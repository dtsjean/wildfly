FROM Centos
RUN yum update -y
RUN yum install -y net-tool vim wget java
RUN wget http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.tar.gz
RUN tar zxvf /root/wildfly-10.1.0.Final.tar.gz
RUN mv /root/wildfly-10.1.0.Final.tar.gz /opt/wildfly
RUN /opt/wildfly/bin/standalone.sh
EXPOSE 8080 
