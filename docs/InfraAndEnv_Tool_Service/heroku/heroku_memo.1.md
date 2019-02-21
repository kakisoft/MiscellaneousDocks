# 超簡単なHeroku（ヘロク）の概要
git pushしただけでアプリを公開できるサービス。  
無料枠で色々できる。  
　  
　  
# Heroku用語集
　  
## Slug（スラグ）
ソースコードと、依存関係のあるライブラリ（Dependencies）をまとめておく。
これにより、アプリを素早く稼働できる。
ファイルサイズに制限があるので、静的ファイル（JavaScript、CSS、画像ファイル等）は、外部ストレージに保存する事を推奨されている
　  
## Dyno（ダイノ）
仮想サーバ。ここでSlugを読み込む。
簡単に増減できる。
基本的に破棄される物なので、永続的なファイルを保持する事は出来ない。
データを永続的に保持する場合、アドオンや外部ストレージを使用する。
（Addmon:Databaseとか）

　  
## Dependencies
ライブラリの依存関係を示したファイル。
Rubyならgem、Node.jsならpackege.jsonだったり。
　  
## Procfile（プロックファイル）
Heroku上で動かしたいコマンドの一覧。
Webからのリクエストを処理するためのプロセスや、
バックグラウンドで処理するプロセス。  
gitコマンド１発でHerokuに送ることができる。
　  
　  
# 準備
　  
## ユーザ登録
[Heroku](https://www.heroku.com/)のユーザ登録が必要です。
　  
## Heroku Toolbelt(CLIツール）インストール

## The Heroku CLI

### インストール
```
brew tap heroku/brew && brew install heroku
```
コマンドラインで操作するためのツールをインストールします。[公式サイトを参照して下さい。](https://devcenter.heroku.com/articles/heroku-cli)  
npmを使う方法が OSごとの変化がないので、一番お手軽ではないでしょうか。（Node.jsが要りますが。）
```
npm install -g heroku-cli
```
Windowsの場合、パスを通す必要があるかもしれません。  
npmのインストールメッセージを参考に、パスを通す場所を確認して下さい。  
面倒なら、Chocolateyを使ってインストールする方法がお勧めです。
```
choco install heroku-cli
```

バージョン確認は以下のコマンド
```
heroku --version
```

## 秘密鍵/公開鍵 作成
```
（作成例）
ssh-keygen -t rsa -C "Heroku-key"
```
Windowsの場合、git bashからの実行でよいかと。

## 公開鍵のアップロード
```
heroku login
```
ログインと同時に公開鍵がアップされる。


## CLIログイン
```
heroku login -i
```



rails new mymemo -d postgresql

Gemfileを編集。
gem 'therubyracer', platforms: :ruby
のコメントアウトを解除。

C:\Users\uskaki002\AppData\Roaming\npm
C:\Users\uskaki002\AppData\Roaming\npm\heroku
C:\Users\uskaki002\AppData\Roaming\npm\node_modules\heroku-cli\bin\run




Microsoft Windows [Version 10.0.15063]
(c) 2017 Microsoft Corporation. All rights reserved.

C:\Users\uskaki002>where heroku
C:\Users\uskaki002\AppData\Roaming\npm\heroku
C:\Users\uskaki002\AppData\Roaming\npm\heroku.cmd
C:\Program Files\Heroku\bin\heroku.cmd

C:\Users\uskaki002>







/bin/bash: 
C:\Users\uskaki002\AppData\Roaming\npm\node_modules\heroku-cli\bin\run: そのようなファイルやディレクトリはあ りません

## アドオン
```
Addon:Logging
Addon:Mail
Addon:Analytics
--
Addon:DataBase
```


# アプリ開発に手間取ってない？Herokuでこれからの開発手法を手に入れよう！
# 岡本 充洋 [セールスフォース・ドットコム]/稲葉 洋幸 [セールスフォース・ドットコム]

git push heroku master

git連携
プルリクした内容が、heroku上でも見れる。


Data　データを管理・保管する
Elements　便利な追加機能

heroku flow

Heroku Meetup東京にて定期開催
```