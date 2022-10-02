all: build push

build:
ifndef TEXT
	$(error TEXT is undefined)
endif
	docker build -t ondrejsika/argocd-image-updater-example --platform linux/amd64 . --no-cache --build-arg TEXT=$(TEXT)

push:
	docker push ondrejsika/argocd-image-updater-example
