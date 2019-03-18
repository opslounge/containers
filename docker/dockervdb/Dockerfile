FROM centos:latest
                                                                                                     
RUN yum -y install net-tools nfs-utils unzip xinetd
                                                                                                      
RUN mkdir /tmp/ir

COPY java.zip /tmp/
COPY vdbench.zip /tmp/
COPY vdbenchtests.zip /tmp/
                                                                                                      
WORKDIR /tmp/
RUN unzip /tmp/java.zip
RUN unzip /tmp/vdbench.zip
RUN unzip /tmp/vdbenchtests.zip

CMD ["/bin/bash"]

