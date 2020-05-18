# README

# アプリケーションの概要
アプリ名 Code Lab

エンジニア専用のもくもく会SNS
(もくもく会情報をSNSのように投稿できる。投稿された情報をお気に入り登録、コメント、参加希望をすることができる、
このアプリを使うことでエンジニア同士が気軽に勉強仲間を募集できる)

### サイトテーマ
エンジニア同士が気軽に繋がることができ、プログラミング初心者の方でも自分と同じレベルのプログラミング学習始めたての人と繋がることができる。

### テーマを選んだ理由
自分が独学で勉強している時にエンジニアの人と繋がりたくても繋がる方法がなく、自分が使えそうなもくもく会参加アプリもなかった。
なので、当時の自分(プログラミング初心者)でも気軽にもくもく会に参加できるようなアプリを作りたいと思ったから。

### ターゲットユーザ
プログラミング初心者～ベテランエンジニアまで

### 主な利用シーン
・エンジニア仲間を増やしたい時

・プログラミングに関する情報を共有したい時

・勉強仲間を増やしたい時

# アプリケーションの機能
・もくもく会情報を投稿

・開催予定のもくもく会に対して「参加希望」リクエストを送信

・お気に入り登録

・コメント

・検索

・ログイン(devise)

・お気に入り数が多いもくもく会をランキング表示

・地図表示

・モデルに対するバリデーション

# 技術的ポイント
・AWS EC2/RDSを用いたRails本番環境構築

・独自ドメイン取得、使用

・Ajaxを用いた非同期処理（お気に入り登録/未登録の切り替え表示）

・Bootstrapを使用してデザイン調整

・RSpecでテスト記述

・Google Map APIを用いて地図表示

# 設計書
#### テーブル定義書
https://docs.google.com/spreadsheets/d/1NUuxHvPUvC8kXgfl5GVCp0SM5vb6FZBm6jKS6iUOT4g/edit?usp=sharing

