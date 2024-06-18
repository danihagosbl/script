# Deploying Container Apps using Terraform

This script will walk you through the deployment of Azure Container Apps using Terraform configuration file.
The terraform config in `main.tf` file will create the following resources:
1. Resource group
2. Azure Container Apps Environment
3. Azure Container Apps that deploys the container image from ACR registry: `exampleacr.azurecr.io/exampleimage:latest`.

To deploy this config, you need to cd into the folder where you have the `main.tf` file. Then run the following commands.

```shell
terraform init

terraform plan -out tfplan

terraform apply tfplan
```

# Deploying an Azure Container Apps environment and container using Bicep

This template provides a way to deploy a Container App in a Container App Environment.
You need to create a resource group. Then you run the following commands to create the following resources:
1. Log Analytics workspace
2. Container Apps Environment
3. Container Apps container using a docker image from ACR registry

```powershell
$RESOURCE_GROUP="rg-aca-app-bicep"

# create new resource group
az group create --name $RESOURCE_GROUP --location uksouth

# preview the changes
az deployment group what-if `
              --name aca-demo-bicep `
              --resource-group $RESOURCE_GROUP `
              --template-file main.bicep

# apply the changes
az deployment group create `
              --name aca-demo-bicep `
              --resource-group $RESOURCE_GROUP `
              --template-file main.bicep
```
