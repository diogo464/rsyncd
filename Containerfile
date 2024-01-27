FROM docker.io/alpine:3.19.1

EXPOSE 873

RUN apk add --no-cache rsync

ENTRYPOINT [					\
	"/usr/bin/rsync",			\
	"--daemon",					\
	"--no-detach",				\
	"--address=0.0.0.0",		\
	"--log-file=/dev/stdout"	\
]

LABEL org.opencontainers.image.source "https://github.com/diogo464/rsync"
