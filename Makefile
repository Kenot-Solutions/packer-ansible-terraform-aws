include .env
export $(shell sed 's/=.*//' .env)

terraform-init:
	cd terraform && terraform init && cd -

terraform-plan:
	cd terraform && \
	terraform plan && \
	cd -

terraform-apply:
	cd terraform && \
	terraform apply && \
	cd -

terraform-destroy:
	cd terraform && \
	terraform destroy && \
	cd -

packer-build:
	cd packer && \
	packer build template.json && \
	cd -
