= rsync

This repo contains a single alpine container with rsync installed.

== Usage

```bash
docker run --name rsyncd                    \
    -p 873:873                              \
    -v <path to config>:/etc/rsyncd.conf    \
    -v <path to data1>:/mnt/data1           \
    # ...                                   \
    -v <path to datan>:/mnt/datan           \
    ghcr.io/diogo464/rsyncd
```
