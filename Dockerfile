FROM ruby:3.0-alpine
RUN apk --no-cache upgrade
COPY . /common-three
WORKDIR /common-three
CMD ["ruby"]