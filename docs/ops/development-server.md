# 開発サーバーの立ち上げ方法

このドキュメントは、開発サーバー起動手順のメモです。

## 前提

- コマンドはルートディレクトリで実行する
- パッケージ起動は `pnpm --filter <package名> dev` を使う
- `make run api` で API 開発サーバーを起動できる

## 現在の起動方法

### API（package/api）

```bash
# make経由（推奨）
make run api

# 同じ動作（簡略）
make run

# pnpmを直接実行
pnpm --filter api dev
```

現在の `api` パッケージでは、`dev` スクリプトとして `wrangler dev` が実行される。

### WEB（package/web）

現時点では `package/web/package.json` が未作成のため、起動コマンドは未定義。

`web` 側を作成したら、`package/web/package.json` に `dev` スクリプトを追加し、以下で起動する。

```bash
pnpm --filter web dev
```

## 補足

- `cd package/api` して `pnpm dev` でも起動できるが、運用はルート実行に統一する
- 複数パッケージを使うようになったら、必要に応じてルート `package.json` に起動用 script（例: `dev:api`, `dev:web`）を追加する
