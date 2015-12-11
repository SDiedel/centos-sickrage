# SickRage Docker

Just a simple [CentOS7](https://www.centos.org) container running [Sickrage](https://github.com/SiCKRAGETV/SickRage)

```
$ docker pull sdiedel/centos-sickrage
```

## Run container

```
$ docker run -d --restart=always -p 8081:8081 -v </path/to/local/folder>:/downloads -v </path/to/local/folder>:/data sdiedel/centos-sickrage
```

##Details

`/download` - Sickrage download directory (i.e. mountpoint on your NAS)
`/data` - Sickrage data directory (mount a volume here to persist Sickrage data)
