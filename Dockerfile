FROM pipelinecomponents/perl-critic:latest

RUN apk add bash curl ca-certificates coreutils jq perl-utils

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh && \
    cpan File::pushd

ENTRYPOINT ["/entrypoint.sh"]
