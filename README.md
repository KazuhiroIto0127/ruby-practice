# ruby3.1.2で色々練習

## 実行手順
```shell
# imageをbuild
docker build -t my-ruby-app .
# コンテナを起動して、test.rbを実行して、exitと同時にコンテナを削除する
docker container run \
  --rm \
  -v $(pwd):/usr/src/app \
  --name my-ruby-app \
  -it my-ruby-app ruby test.rb
```

## bin/bash

```shell
# コンテナを起動、bin/bashを実行して、exitと同時にコンテナを削除する
docker container run \
  --rm \
  -v $(pwd):/usr/src/app \
  --name my-ruby-app \
  -it my-ruby-app /bin/bash
```
