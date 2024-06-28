# fastapi-azure-app-service-deployment

Demo of FastAPI + GitHub Actions Continuous Deployment + Azure App Service.

## Azure Web app

### Go to Azure Portal - Create Web App

`https://portal.azure.com/#create/Microsoft.WebSite`

![sc](resources/1-create-web-app.png)

### Configure deployment options

![sc](resources/2-create-web-app-deployment-cd.png)

### Complete

![sc](resources/3-deployment-complete.png)

### Configure startup command

```bash
gunicorn --worker-class uvicorn.workers.UvicornWorker --timeout 600 --access-logfile '-' --error-logfile '-' main:app
```

![sc](resources/4-az-webapp-configuration.png)

## References

https://azureossd.github.io/2024/04/23/Deploying-a-Python-FastAPI-app-to-App-Service-Linux/

https://github.com/noahgift/fastapi