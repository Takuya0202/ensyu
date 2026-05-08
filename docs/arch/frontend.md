# フロントエンド設計方針

## スタック

| 項目 | 採用技術 | 備考 |
|------|---------|------|
| フレームワーク | Next.js (App Router) | RSC / Server Actions を活用 |
| ホスティング | Vercel | |
| UIライブラリ | shadcn/ui（または自前） | 未確定。規模感を見て判断 |
| 状態管理 | Zustand | グローバル UI 状態のみ管理 |
| バリデーション | Zod | バックエンドとスキーマ共有 |
| 言語 | TypeScript | |

## パッケージ

`package/web` に格納。

## ルーティング方針

- App Router のファイルシステムルーティングに従う
- `app/` 配下に機能ドメイン単位でディレクトリを切る
- Client Component は最小限にとどめ、データフェッチは Server Component で行う

## 状態管理方針

- サーバーデータ（投稿・ユーザー情報等）は URL・Server Component で管理し、Zustand には入れない
- Zustand はモーダル開閉・フォーム一時状態など純粋な UI ステートのみに使う

## API 通信方針

- バックエンドとの通信は Hono RPC を使い型安全にする
- 詳細は `arch/api-contract.md` を参照
