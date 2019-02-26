FROM alpine:latest

LABEL "com.github.actions.name"="Accept pull request"
LABEL "com.github.actions.description"="Accept pull request after succeeded tests"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache \
	bash \
	ca-certificates \
	coreutils \
	curl \
	jq

COPY accept-pr.sh /usr/local/bin/accept-pr

CMD ["accept-pr"]
