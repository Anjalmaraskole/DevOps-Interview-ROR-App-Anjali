# DevOps Interview Ruby on Rails Application

This project is a Ruby on Rails app running inside Docker containers with Nginx as a reverse proxy. It is deployed on AWS using Infrastructure as Code (IaC) with Terraform.

## Project Summary

- Rails app runs in a Docker container on port 3000.
- Nginx runs in a separate Docker container on port 80 and forwards requests to Rails.
- PostgreSQL database is hosted on AWS RDS.
- Load Balancer (ELB) is used to distribute traffic.
- Infrastructure is created using Terraform scripts.
- Application uses S3 bucket for file storage with IAM role authentication.

## Steps We Followed

1. Cloned the project from GitHub.
2. Built Docker image for Rails app and pushed it to AWS ECR.
3. Created custom Docker image for Nginx.
4. Used Terraform to create AWS infrastructure:
   - Created ECS cluster and service.
   - Set up Load Balancer in public subnet.
   - Created RDS Postgres instance in private subnet.
   - Created S3 bucket and configured IAM role.
5. Added environment variables to ECS task definition:
   - RDS database credentials
   - S3 bucket name and region
   - Load Balancer endpoint
6. Deployed containers on ECS.
7. Tested the app using Load Balancer URL in browser.

## How to Access the App

- Use the Load Balancer URL in your browser to access the app.
- Rails app listens on port 3000 internally.
- Nginx listens on port 80 and forwards requests to Rails.

## Important Notes

- Run database migrations inside the Rails container after deployment.
- In Nginx, use the network alias `rails_app` to connect to the Rails container.
- Infrastructure code is inside the `infrastructure` folder.
- Architecture diagram and deployment instructions are also in

