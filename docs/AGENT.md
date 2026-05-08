# docs/ インデックス

このディレクトリには3種類のドキュメントがある。

## 構造

| ディレクトリ | 目的 |
|------------|------|
| `ops/` | 操作・運用メモ（コマンドの使い方、手順） |
| `arch/` | アーキテクチャ・設計方針（技術的判断の根拠） |
| `product/` | プロダクト要件・ユーザーフロー（何を作るかの仕様） |

## タスク別の参照ガイド

| やること | 読むファイル |
|---------|------------|
| 環境構築・開発サーバー起動 | `ops/development-server.md` |
| 依存パッケージの追加・管理 | `ops/dependency-management.md` |
| バックエンド機能の実装 | `arch/backend.md`, `arch/api-contract.md` |
| 認証まわりの実装 | `arch/auth.md` |
| フロントエンド機能の実装 | `arch/frontend.md`, `arch/api-contract.md` |
| 機能の仕様・スコープ確認 | `product/mvp-features.md`, `product/user-flows.md` |
| 認証フローの確認 | `product/event-storming-legend.drawio`（認証フローページ） |
| サービス全体像・背景の確認 | `product/overview.md` |

## 運用ルール

- 1ファイル = 1関心事。複数の関心事が混在し始めたら積極的に分割する
- `AGENT.md` と `CLAUDE.md` は常に同一内容を維持する（AGENT.md を更新したら CLAUDE.md にも反映）
