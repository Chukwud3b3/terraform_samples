# Azure Load Balancers Deployment with Terraform

This repository contains Terraform code to deploy both an internal and an external load balancer on Azure.

## Features

- External Load Balancer with a public IP address.
- Internal Load Balancer with a static private IP.
- Backend address pools for both load balancers.
- Health probes to monitor backend services.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Azure CLI authenticated with appropriate permissions.

## Usage

1. Clone the repository:

   ```sh
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Initialize Terraform:

   ```sh
   terraform init
   ```

3. Customize variables in `variables.tf` or provide a `terraform.tfvars` file.

4. Plan the deployment:

   ```sh
   terraform plan
   ```

5. Apply the deployment:

   ```sh
   terraform apply
   ```

6. Destroy the resources when done:

   ```sh
   terraform destroy
   ```

## Outputs

- External Load Balancer ID
- Internal Load Balancer ID
- Backend Pool IDs for both load balancers

## Contributing

Feel free to submit issues or pull requests for improvements.
