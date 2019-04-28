SSH_HOST=dbrgn.ch
SSH_PORT=22
SSH_USER=danilo
SSH_TARGET_DIR=/srv/www/airspaces/

help:
	@echo "Usage: make <target>"
	@echo ""
	@echo "Available targets: dev, dist, deploy"

test:
	wasm-pack test --headless --firefox

build-dev:
	wasm-pack build

build-release:
	wasm-pack build --release

dev: build-dev
	cd www && npm run start

dist: build-release
	cd www && rm -r dist && npm run build
	@echo ""
	@echo "Done, you can find the dist bundle in the www/dist/ directory."

deploy: dist
	scp -r -P ${SSH_PORT} www/dist/* ${SSH_USER}@${SSH_HOST}:${SSH_TARGET_DIR}