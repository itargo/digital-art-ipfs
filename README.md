# Digital Art IPFS server
### 실행 방법
* local에서 실행
```bash
$ docker-compose up
```
* production에서 실행
처음에는 .env 파일 생성 후 환경변수들 설정해야함
```bash
$ cp .env-example .env
$ source .env
$ docker-compose -f docker-compose.production.yml up
```

### Trouble shooting
* error posting to IPFS:Post "http://172.20.0.2:5001/api/v0/pin/ls?type=recursive": dial tcp 172.20.0.2:5001: connect: connection refused
```bash
$ docker-compose down --remove-orphans
$ docker-compose up 
```
