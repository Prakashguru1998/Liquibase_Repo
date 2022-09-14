FROM liquibase:4.15
RUN yum update -y
RUN mkdir /liquibase
WORKDIR /liquibase
COPY ./
RUN lpm add mysql --global &
ENTRYPOINT ["/liquibase/docker-enterypoint.sh"]


