#!/bin/bash
# Usage: ./create-service-connection.sh <ORG_URL> <PROJECT_NAME> <SUBSCRIPTION_ID> <SUBSCRIPTION_NAME> <TENANT_ID> <APP_ID> <APP_SECRET>

ORG_URL=$1
PROJECT=$2
SUBSCRIPTION_ID=$3
SUBSCRIPTION_NAME=$4
TENANT_ID=$5
APP_ID=$6
APP_SECRET=$7

az extension add --name azure-devops -y

az devops configure --defaults organization=$ORG_URL project=$PROJECT

az devops service-endpoint azurerm create   --name "iac-connection"   --azure-rm-service-principal-id $APP_ID   --azure-rm-subscription-id $SUBSCRIPTION_ID   --azure-rm-subscription-name "$SUBSCRIPTION_NAME"   --azure-rm-tenant-id $TENANT_ID   --azure-rm-service-principal-key $APP_SECRET
