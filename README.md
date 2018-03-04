[appurl]: https://minecraft.curseforge.com/projects/modern-skyblock-3-departed
[hub]: https://hub.docker.com/r/cinnamennen/modern-skyblock-3/




# cinnamennen/modern-skyblock-3
[![](https://images.microbadger.com/badges/version/cinnamennen/modern-skyblock-3.svg)](https://microbadger.com/images/linuxserver/minetest "Get your own version badge on microbadger.com")[![](https://images.microbadger.com/badges/image/cinnamennen/modern-skyblock-3.svg)](https://microbadger.com/images/cinnamennen/modern-skyblock-3 "Get your own image badge on microbadger.com")[![Docker Pulls](https://img.shields.io/docker/pulls/cinnamennen/modern-skyblock-3.svg)][hub][![Docker Stars](https://img.shields.io/docker/stars/cinnamennen/modern-skyblock-3.svg)][hub]

## Usage

```
docker create \
  --name=minetest \
  -v <path to data>:/config/.minetest \
  -e PGID=<gid> -e PUID=<uid>  \
  -p 30000:30000/udp
  linuxserver/minetest
```

## Parameters

`The parameters are split into two halves, separated by a colon, the left hand side representing the host and the right the container side. 
For example with a port -p external:internal - what this shows is the port mapping from internal to external of the container.
So -p 8080:80 would expose port 80 from inside the container to be accessible from the host's IP on port 8080
http://192.168.x.x:8080 would show you what's running INSIDE the container on port 80.`



* `-p 30000/udp` - the port(s)
* `-v /config/.minetest` - where minetest stores config files and maps etc.
* `-e PGID` for GroupID - see below for explanation
* `-e PUID` for UserID - see below for explanation

It is based on alpine linux with s6 overlay, for shell access whilst the container is running do `docker exec -it minetest /bin/bash`.

