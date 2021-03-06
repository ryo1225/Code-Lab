# README

![code-lab-about](https://user-images.githubusercontent.com/55618173/82446126-0a56c800-9ae1-11ea-9149-c3bbb00714b7.png)

# アプリケーションの概要
アプリ名 **Code Lab**  https://code-lab.site/

**エンジニア専用のもくもく会SNS**

(もくもく会情報をSNSのように投稿できる。投稿された情報をお気に入り登録、コメント、参加希望をすることができる)

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
・**AWS EC2/RDS**を用いたRails本番環境構築

・**AWS ACM**でSSL証明書を発行し、SSL化

・**独自ドメイン**取得、使用

・**Ajax**を用いた非同期処理（お気に入り登録/未登録の切り替え表示）

・**Bootstrap**を使用してデザイン調整

・**RSpec**でテスト記述

・**Google Map API**を用いて地図表示

# 工夫した点
・**友人3人に実際にアプリを利用してもらい改善**

よりユーザーに使いやすいサービスにする為にアプリが完成後、実際に友人に利用してもらいフィードバックをもらいました。
改善点としてもくもく会の新規投稿時にテンプレートがあれば投稿しやすいということでプレースホルダーでテンプレートを追加しました。

また、事前にもくもく会の参加者が把握できると安心して参加することができるとの意見があったので参加ボタンを押したユーザーの一覧ページを追加しました。

・**GitHubの活用**

今後の実務を想定して、GitHubのissueを設定して開発を行いました。
また、開発用ブランチと本番用ブランチを分けて開発を進めていきました。

# 設計書
#### テーブル定義書
https://docs.google.com/spreadsheets/d/1NUuxHvPUvC8kXgfl5GVCp0SM5vb6FZBm6jKS6iUOT4g/edit?usp=sharing

