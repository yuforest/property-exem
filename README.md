
Property-Exem
====


## Description
不動産管理アプリケーションです。
不動産の情報を登録し、最寄り駅の個数を任意の数登録できます。

## Requirement
- Ruby 2.3.1
- Rails 5.1.6
- PostgreSQL 9.3.18

## Function
- 不動産の管理
- 不動産に紐づく最寄り駅の設定

## Usage
このアプリケーションを動かす場合は、まずはリポジトリを手元にクローンしてください。
    $ git clone git@github.com:yuforest/property-exem.git

次に、以下のコマンドで必要になる Ruby Gems をインストールします。

    $ bundle install
その後、データベースへのマイグレーションを実行します。

    $ rails db:migrate
これで、Railsサーバーを立ち上げる準備が整っているはずです。

    $ rails server

## Licence

このアプリケーションはMITライセンスを適用しています。
RICENSE.txtを見てください。

## Author

[yuforest](https://github.com/yuforest)
