# Azure IaC Automation Project

## Structure
- `infra/`: Terraform code (Resource Group + Storage Account example)
- `pipelines/azure-pipelines.yml`: Azure DevOps pipeline
- `scripts/create-service-connection.sh`: Script to create Azure DevOps Service Connection

## Setup

1. Push repo to GitHub:
```bash
git clone https://github.com/<your-username>/<your-repo>.git
cd <your-repo>
cp -r ../azure-iac-automation/* .
git add .
git commit -m "Add IaC automation project"
git push origin main
```

2. Run the service connection script:
```bash
./scripts/create-service-connection.sh <ORG_URL> <PROJECT_NAME> <SUBSCRIPTION_ID> <SUBSCRIPTION_NAME> <TENANT_ID> <APP_ID> <APP_SECRET>
```

3. In Azure DevOps → Pipelines → New Pipeline → GitHub → Select repo.

4. Run pipeline, Terraform will provision infra.
