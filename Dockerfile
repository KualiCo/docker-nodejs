
#
# Node.js v0.11.14
#
# VERSION 0.0.4
#

FROM ubuntu:14.04
MAINTAINER Murphy Randle <mrandle@kuali.co>
ENV VERSION 0.11.14

#
# System
#

RUN apt-get update -qq
RUN apt-get install -y make gcc g++ python curl libssl-dev git

#
# Install node
#

RUN curl -L# http://nodejs.org/dist/v$VERSION/node-v$VERSION-linux-x64.tar.gz | tar -zx --strip 1 -C /usr/local

#
# Clean up
#

RUN rm -fr /usr/src/node

#
# Entry
#

CMD ["node"]

# Usage: docker run -t -i $IMAGE
