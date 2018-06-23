ARG ALPINE_VERSION
FROM alpine:$ALPINE_VERSION
ARG TSC_VERSION
RUN apk add --no-cache nodejs-npm
RUN npm install -g typescript@$TSC_VERSION
