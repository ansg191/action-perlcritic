FROM pipelinecomponents/perl-critic:latest

RUN apk add bash curl ca-certificates coreutils jq 

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
