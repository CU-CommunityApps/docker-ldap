# Pull base image.
FROM docker.cucloud.net/base

# Install Java.
RUN \
  apt-get update && \
  apt-get install -y slapd ldap-utils phpldapadmin && \
  rm -rf /var/lib/apt/lists/*

COPY run-ldap.sh /

# Define working directory.
WORKDIR /var/lib

EXPOSE 389

# Define default command.
CMD ["/run-ldap.sh"]
