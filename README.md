# deploy_container
Deploying a container to Azure Container Registry via Github actions

## Setup in Azure

In Azure you'll need an Azure Container Registry and a Service Principal (App registration)

## Setup in Github

Create a secret called TST_AZURE_CREDENTIALS containing the filled in settings below
```
{
  "clientId": "[Client ID of service principal]",
  "clientSecret": "[Service principal secret]",
  "subscriptionId": "[Subscription ID]",
  "tenantId": "[Tenant ID]",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}
```

