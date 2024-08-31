# atmacup17

## バックグラウンドにて、複数のノートブックを直列に実行する
```
# あらかじめ、mutiple_run.sh内に実行したいnotebookを記載する
nohup ./shell/multiple_run.sh &
```

## 動いているかの確認
```
ps aux | grep python
```

## Kill
```
pkill multiple_run && pkill runnb
```

## git系

```
git add -u
git config --global user.email "dekunattou@gmail.com"
git commit -m "add"
git push origin main
```

## コンペティションデータのダウンロード

### セッティング
- kaggle.jsonをダウンロードする
  - https://www.kaggle.com/settings
- kaggle.jsonを`env_file`配下にアップロードする
- 適切なパスと権限を付与し、kaggleをinstallする
```
./shell/set_kaggle_api.sh
```

### データのダウンロード
```
./shell/download_competition_data.sh
```

## シェルの設定

```
./shell/setting_shell.sh
```

## GitHubへのアクセス権限の設定
```
./shell/make_github_key_and_set_email.sh.sh
```

以下のリンクで、New SSH Keyを行い、出力された公開鍵を登録する

https://github.com/settings/keys


## 環境変数の設定
```
cp env_file/env.default env_file/env
```
envファイルに対し、WANDB_API_KEY, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEYを設定する

## 注意点

### 仮想環境
- 仮想環境はryeで管理する想定である。`rye pin 3.10.3`, `rye sync`など。
- ただし、GPU環境によっては既存の環境を利用した方が楽な場合があるため、利用しなくても良い。

### nbconvertで変換した際に、ログに残るかどうか
- printで出力したものは残る
- notebookの一番最後に実行し、Notebookの機能で出力したものは残らない
