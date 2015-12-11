# CentOS SickRage Docker

```
$ docker pull sdiedel/centos-sickrage
```

## Run container

```
$ docker run -d --restart=always -p 8081:8081 -v </path/to/local/folder>:/downloads -v </path/to/local/folder>:/data sdiedel/centos-sickrage
```

##Details

`/sickrage` - Application is installed to this path

`/data` - Sickrage data directory (mount a volume here to persist Sickrage data)
