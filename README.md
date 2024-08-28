# Deployment Process

This repository uses AWS CodeBuild to automate the build and deployment process. When a commit is pushed to GitHub, CodeBuild triggers a new build based on the `buildspec.yml` file. The build process involves several key stages:

1. **Authentication**: The first stage logs into Docker Hub and AWS Elastic Container Registry (ECR) using the provided credentials.

2. **Building the Image**: The application is built into a Docker image, which is then tagged with a version identifier.

3. **Pushing the Image**: The newly tagged Docker image is pushed to the ECR repository, ensuring it is available for deployment.

Once the image is successfully pushed to ECR, you need to update the deployment configuration (e.g., Kubernetes or ECS) with the new image version. This update ensures the cluster is running the latest version of the application.

### Releasing New Builds

To release a new build:

1. **Push Changes**: Commit and push your changes to the GitHub repository. This action triggers the build process in CodeBuild.

2. **Update Deployment**: After the build completes, update your deployment configuration to reference the new Docker image tag.

3. **Re-deploy the Cluster**: Redeploy your application using the updated configuration, ensuring the cluster is running the latest version of the image.
