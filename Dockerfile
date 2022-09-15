FROM liquibase/liquibase
RUN mkdir /liquibase
WORKDIR /liquibase
USER liquibase
USER 1001
RUN lpm add mysql --global &
VOLUME ["/liquibase"]
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
CMD ["--help"]

