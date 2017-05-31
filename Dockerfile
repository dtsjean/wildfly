FROM Centos
RUN yum update -y
RUN yum install -y net-tool vim wget java
RUN yum clean all
RUN cd /root ; wget http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.tar.gz
RUN cd /root ; tar zxvf /root/wildfly-10.1.0.Final.tar.gz
RUN cd /root ; mv /root/wildfly-10.1.0.Final.tar.gz /opt/wildfly
RUN rm - Rf /root
CMD ["/opt/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]
EXPOSE 8080 
