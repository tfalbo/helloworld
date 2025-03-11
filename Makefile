.PHONY: minikube-start build push run helm-install helm-delete

minikube-start:
	eval $(minikube docker-env)
	minikube start

minikube-pause:
	minikube pause

docker-build:
	docker build -t helloworld .

docker-run:
	docker run -p 3000:3000 helloworld

helm-install:
	helm upgrade --install helloworld ./helm -f ./helm/values.yaml

helm-delete:
	helm uninstall helloworld

expose-service:
	minikube service helloworld-service