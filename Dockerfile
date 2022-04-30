FROM postgres:alpine

MAINTAINER Fabian Kaindl <github-docker@fabiankaindl.de>
# Add Healthcheck into the Image
HEALTHCHECK --interval=30s --timeout=3s \
  CMD pg_isready -U postgres
  
RUN apk -U upgrade
