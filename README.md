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

> NOTE! If your secret begins with a "-" the login will fail, regenerate and get a password that begins with a letter.

- Create a secret called TST_SP_CLIENT_ID and assign the Client ID of the Service Principal
- Create a secret called TST_SP_SECRET and assign to the secret of the Service Principal

# TODO:

- Deploy the service principal? Or at least configure the RBAC and make service principal mandatory