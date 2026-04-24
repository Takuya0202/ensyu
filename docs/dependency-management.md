# 依存関係のインストール・追加方法

このドキュメントは、依存関係の運用ルール専用メモです。

## 前提

- パッケージマネージャーは `pnpm`
- workspace は `pnpm-workspace.yaml` で `package/*` を対象
- コマンド実行はルートディレクトリを基本にする

## インストール（install）

- 基本はルートで実行する

```bash
pnpm install
```

- 各パッケージ配下で `pnpm install` を実行しても、workspace 全体に影響することがある
- 迷ったらルートで実行する

## 依存関係の追加

## 1) 各パッケージ専用の依存を追加する

`--filter` を使って対象パッケージを指定する。

```bash
# api に runtime 依存を追加
pnpm --filter api add hono

# api に dev 依存を追加
pnpm --filter api add -D wrangler

# web に runtime 依存を追加
pnpm --filter web add react

# web に dev 依存を追加
pnpm --filter web add -D @types/react
```

## 2) ルート共通の依存を追加する

ESLint / Prettier / TypeScript など、ワークスペース共通で使うツールはルートに追加する。

```bash
pnpm add -D eslint prettier typescript
```

## 3) 追加後の確認

```bash
# 整形
pnpm format

# lint
pnpm lint
```

## 補足

- 依存追加は「どこで使うか」で決める
  - 特定パッケージのみで使う -> `--filter` でそのパッケージに追加
  - 全体で使うツール -> ルートに追加
