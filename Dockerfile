FROM alpine:3.9

LABEL version="0.0.1"
LABEL repository="https://github.com/yuichielectric/export-action"
LABEL homepage="https://github.com/yuichielectric/export-action"
LABEL maintainer="Yuichi Tanaka <yuichielectric@github.com>"

LABEL com.github.actions.name="Export action"
LABEL com.github.actions.description="GitHub Action to extract a value from GITHUB_EVENT_PATH file and export as an environment value"
LABEL com.github.actions.icon="compass"
LABEL com.github.actions.color="blue"

RUN apk update \
    && apk add jq \
    && rm -rf /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
