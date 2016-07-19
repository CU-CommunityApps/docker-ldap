## BUILDING
##   (from project root directory)
##   $ docker build -t cu-communityapps-docker-ldap .
##
## RUNNING
##   $ docker run cu-communityapps-docker-ldap

FROM gcr.io/stacksmith-images/ubuntu-buildpack:14.04-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="3uhzzjo" \
    STACKSMITH_STACK_NAME="CU-CommunityApps/docker-ldap" \
    STACKSMITH_STACK_PRIVATE="1"

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating
