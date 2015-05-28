#!/bin/bash

sudo chown -R openldap:openldap /var/lib/ldap/
chown root:syslog /var/log/
touch /var/log/syslog
chown syslog:adm /var/log/syslog

service rsyslog start

slapd -g openldap -u openldap -h "ldap:/// ldapi:///" -F /etc/ldap/slapd.d/

tail -f /var/log/syslog
