# README

## swagger.json
ローカルでサーバー起動後に以下のコマンドを実行
```
curl localhost:3000/apidocs | jq  . > docs/api-schema/schema.json
```

## erd
```
bundle ex rake erd attributes=foreign_keys,primary_keys
```