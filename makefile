.PHONY: help run api web

help:
	@echo "Usage:"
	@echo "  make api    # バックエンド(API)開発サーバーを起動"
	@echo "  make web    # フロントエンド(Web)開発サーバーを起動"
	@echo "  make run    # 両方の開発サーバーを同時起動"

run:
	$(MAKE) -j2 api web

api:
	pnpm --filter api dev

web:
	pnpm --filter web dev
