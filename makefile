.PHONY: help run api

help:
	@echo "Usage:"
	@echo "  make run api   # バックエンド(API)開発サーバーを起動"
	@echo "  make run       # バックエンド(API)開発サーバーを起動"

run: api

api:
	pnpm --filter api dev
