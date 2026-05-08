# バックエンド設計方針

## スタック

| 項目 | 採用技術 | 備考 |
|------|---------|------|
| フレームワーク | Hono | Cloudflare Workers ネイティブ対応 |
| ランタイム | Cloudflare Workers | エッジ実行 |
| ORM | Drizzle | D1（SQLite）との相性を重視 |
| DB | Cloudflare D1 | SQLite ベース |
| ストレージ | Cloudflare R2 | 画像・ファイル置き場 |
| バリデーション | Zod | フロントエンドと共有可能 |

## パッケージ

`package/api` に格納。

## ルーティング方針

- Hono のルーターを機能ドメイン単位でファイル分割する
- エンドポイント設計の詳細は `arch/api-contract.md` を参照

## DB 設計方針

- Drizzle スキーマは `package/api/src/db/schema.ts` に集約する（ファイルが大きくなったらテーブル単位で分割）
- マイグレーションは `drizzle-kit` で管理する
- 詳細なスキーマ設計は規模が大きくなったら `arch/db-schema.md` に切り出す
