FROM composer:latest
ENTRYPOINT ["composer", "--ignore-platform-reqs"]