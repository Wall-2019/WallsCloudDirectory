# Overview
Sample program to build MySQL and Fast API environment with DockerCompose

#　Git Alias
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.cm commit
git config --global alias.st status

# Docker setup
Create and Running
$ docker-compose up -d --build

## Document of API
http://localhost:8000/docs

# Show Database
$ docker exec -it db bash

$ mysql -u user -h 127.0.0.1 -D sample -p
$ password
$ show databases;

$ show variables like "char%";
## ex) GET
```
$ curl -X GET "http://localhost:8000/users" -H "accept: application/json"
```
Result
```
[{"id":1,"age":15,"name":"太郎"},{"id":2,"age":18,"name":"次郎"},{"id":3,"age":20,"name":"花子"}]
```
## ex) POST
```
$ curl -X POST "http://localhost:8000/user?name=士郎&age=10" -H "accept: application/json"
```

Result
```
[{"id":1,"age":15,"name":"太郎"},{"id":2,"age":18,"name":"次郎"},{"id":3,"age":20,"name":"花子"},{"id":4,"age":10,"name":"士郎"}]
```

## ex) PUT
```
$ curl -X PUT "http://localhost:8000/users" -H "accept: application/json" -H "Content-Type: application/json" -d "[{\"id\":2,\"name\":\"次郎\",\"age\":13}]"
```

Result
```
[{"id":1,"age":15,"name":"太郎"},{"id":2,"age":13,"name":"次郎"},{"id":3,"age":20,"name":"花子"},{"id":4,"age":10,"name":"士郎"}]
```
$メニューの追加　put
http://localhost:8000/menus?category_id=1&menu=ピザ&price=1200&view_no=10

$メニューの編集　post
http://localhost:8000/menus?id=1&category_id=1&menu=やきそば&price=1100&view_no=99

# apiの命名規則
$ localhost:{テーブル名} 
$ localhost:{画面ID}/{APINum}

リクエスト一覧
情報応答（1xx）
status.HTTP_100_CONTINUE クライアントはリクエストを続行できることを示す。
status.HTTP_101_SWITCHING_PROTOCOLS サーバーがクライアントのプロトコル変更リクエストを承認したことを示す。
成功応答（2xx）
status.HTTP_200_OK: 正常にリクエストが処理された。
status.HTTP_201_CREATED: リクエストが成功し、新しいリソースが作成された。
status.HTTP_202_ACCEPTED: リクエストは受け入れられたが、処理は完了していない。
status.HTTP_204_NO_CONTENT: リクエストが成功し、返すべき内容はないがヘッダー情報は有用。
リダイレクションメッセージ（3xx）
status.HTTP_301_MOVED_PERMANENTLY リソースが恒久的に新しいURLに移動した。
status.HTTP_302_FOUND リソースが一時的に別のURLに移動した。
status.HTTP_303_SEE_OTHER リクエストされたリソースが他のURIに一時的に移動された
status.HTTP_304_NOT_MODIFIED リソースは変更されておらず、キャッシュを使用することができる。
status.HTTP_307_TEMPORARY_REDIRECT リクエストされたリソースが一時的に異なるURIに移動された
status.HTTP_308_PERMANENT_REDIRECT リクエストされたリソースが恒久的に新しいURIに移動された
クライアントエラー応答（4xx）
status.HTTP_400_BAD_REQUEST: サーバーがリクエストを理解できない。
status.HTTP_401_UNAUTHORIZED: 認証が必要。
status.HTTP_403_FORBIDDEN: サーバーがリクエストを理解したが、アクセスを拒否している。
status.HTTP_404_NOT_FOUND: リクエストされたリソースが見つからない。
status.HTTP_405_METHOD_NOT_ALLOWED: 使用されたHTTPメソッドが許可されていない。
status.HTTP_422_UNPROCESSABLE_ENTITY: リクエストは理解できるが、内容に誤りがある。
サーバーエラー応答（5xx）
status.HTTP_500_INTERNAL_SERVER_ERROR: サーバー内部にエラーが発生した。
status.HTTP_501_NOT_IMPLEMENTED: サーバーがリクエストのメソッドをサポートしていない。
status.HTTP_502_BAD_GATEWAY: 不適切なゲートウェイ応答。
status.HTTP_503_SERVICE_UNAVAILABLE: サービス利用不可。
status.HTTP_504_GATEWAY_TIMEOUT: ゲートウェイタイムアウト。