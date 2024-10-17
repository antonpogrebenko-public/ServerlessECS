# ServerlessECS
ServerlessECS is a generic example of deploying a serverless application on AWS using ECS and Docker. It includes flexible configurations for IAM roles, ECS task definitions, and log retention policies. Written in Python 3.12, this repository offers a scalable and general-purpose solution, easily deployable with the Serverless Framework.


## Pre-requisites

1. **Node.js**: Ensure you have Node.js installed.
2. **Python 3.xx**: Ensure you have Python installed (tested on 3.12).
3. **Docker**: Ensure you have Docker installed.
4. **AWS CLI**: Ensure you have the AWS CLI installed and configured with your AWS account.
5. **AWS Account**: Ensure you have an AWS account with the necessary permissions to deploy the Serverless application.
6. **Serverless Framework**: Install the Serverless Framework (v3.38 is still free to use) globally using npm:
   ```bash
   npm install -g serverless

## Setup

1. **Install project dependencies:**

   ```bash
   npm install
   ```

2. **Deploy the Serverless application:**

   ```bash
   sls deploy -r us-east-1 --verbose -s prod
   ```

## Running the application

**Run task as a service:**

   ```bash
   aws ecs create-service \
       --cluster CLUSTER_NAME \
       --service-name hello-world-service \
       --task-definition hello-world-prod \
       --desired-count 1
   ```

**Run task as a standalone task:**

   ```bash
   aws ecs run-task \
       --cluster CLUSTER_NAME \
       --task-definition hello-world-prod
   ```

