# Digital Art IPFS server
// local에서 실행
```bash
$ docker-compose up
```
// production에서 실행
우선 .env에 환경변수들 설정하고
```bash
$ source .env
$ docker-compose -f docker-compose.production.yml up
```

### Trouble shooting
* error posting to IPFS:Post "http://172.20.0.2:5001/api/v0/pin/ls?type=recursive": dial tcp 172.20.0.2:5001: connect: connection refused
```bash
$ docker-compose down --remove-orphans
$ docker-compose up 
```
* error while creating mount source path '/mnt/mydata': mkdir /mnt/mydata: file exists
```bash
$ sudo fusermount -u /mnt/mydata
```
