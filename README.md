# Coworking Space Service Extension

The Coworking Space Service is a set of APIs that enables users to request one-time tokens and administrators to authorize access to a coworking space. This service follows a microservice pattern and the APIs are split into distinct services that can be deployed and managed independently of one another.

## how Coworking deployment process works

1. EKS cluster - 'my-cluster' is being used.
2. DB - 'postgresql-service' is being used.
3. Application - 'coworking' is being used.

## how to deploy changes

1. Commit the changes and send pull requests for them to the remote repo: https://github.com/bgtestlab/coworking
2. Once merged, check AWS ECR if the newly built ECR image can be found in the repository name 'coworking'

## how to verify The Application

BASE_URL: a6b4f34906bd64b039344479ba8b0e78-1195361041.us-east-1.elb.amazonaws.com
BASE_PORT: 5153

- Generate report for check-ins grouped by dates
  `curl <BASE_URL>:<BASE_PORT>/api/reports/daily_usage`

- Generate report for check-ins grouped by users
  `curl <BASE_URL>:<BASE_PORT>/api/reports/user_visits`
