# CI/CD Pipeline Using AWS Services

This repository contains the implementation of a CI/CD pipeline using AWS services to automate the build, test, and deployment processes for a sample application.

## Features
- **Automated Builds**: The pipeline automatically builds the application upon code changes.
- **Testing**: Automated testing is performed to ensure the code quality.
- **Docker Integration**: The application is containerized using Docker.
- **Deployment**: The application is deployed to Amazon EC2 instances using AWS CodeDeploy.
- **Monitoring**: The pipeline integrates with AWS CloudWatch for monitoring and logging.

## Pipeline Architecture

### AWS Services Used:
- **AWS CodePipeline**: Orchestrates the CI/CD process.
- **AWS CodeCommit**: Source repository for version control.
- **AWS CodeBuild**: Builds and tests the application.
- **AWS CodeDeploy**: Deploys the application to Amazon EC2 instances.
- **IAM**: Manages permissions and roles for the pipeline and associated resources.

## Setup and Configuration

### Prerequisites
- AWS account with the following services enabled:
  - IAM
  - CodePipeline
  - CodeCommit
  - CodeBuild
  - CodeDeploy
  - S3
- AWS CLI installed and configured.
- Docker installed on your local machine or build server.
- An EC2 instance with the CodeDeploy agent installed and configured.

---

### Steps to Set Up the Pipeline

1. **Clone the Repository**:
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Update the Configuration**:
    - Replace placeholders in the `buildspec.yml` file with your values.
    - Ensure the `appspec.yml` file has the correct configuration for CodeDeploy.

3. **Create the Required AWS Resources**:
    - Set up an S3 bucket to store build artifacts.
    - Create a CodeCommit repository and push your code.
    - Configure a CodeDeploy application and deployment group.
    - Define a CodeBuild project for building and testing the application.
    - Create a CodePipeline to link all services.

4. **Set Up IAM Roles**:
    - Ensure the IAM roles for CodePipeline, CodeBuild, and CodeDeploy have the necessary permissions.
    - Attach the `AmazonEC2RoleforAWSCodeDeploy` policy to the EC2 instance profile.

5. **Deploy the Application**:
    - Push changes to the CodeCommit repository.
    - CodePipeline will automatically trigger and complete the build, test, and deploy stages.

---

## File Structure

```bash
.
├── appspec.yml             # Configuration for CodeDeploy
├── buildspec.yml           # Build and test configuration for CodeBuild
├── src/                    # Source code of the application
├── scripts/                # Deployment scripts
└── README.md               # Project documentation
```
Usage
Push Code Changes: Push changes to the CodeCommit repository to trigger the pipeline.

bash
Copy code
git add .
git commit -m "Update application"
git push origin main
Monitor the Pipeline: Monitor the pipeline progress in the AWS CodePipeline console.

Check Logs: View build and deployment logs in AWS CodeBuild and AWS CodeDeploy consoles.

Features
Automated Builds: The pipeline automatically builds the application upon code changes.
Testing: Automated testing is performed to ensure code quality.
Docker Integration: The application is containerized using Docker.
Deployment: The application is deployed to Amazon EC2 instances using AWS CodeDeploy.
Monitoring: The pipeline integrates with AWS CloudWatch for monitoring and logging.
