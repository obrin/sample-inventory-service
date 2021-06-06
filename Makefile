build:
	pack build jordanyong/sample-inventory-service --builder gcr.io/buildpacks/builder:v1
publish:
	docker push jordanyong/sample-inventory-service
helm-update:
	helm dependency update charts
release:
	helm upgrade --install sample-inventory-service charts