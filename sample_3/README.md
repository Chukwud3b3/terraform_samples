# Azure Hub and Spoke Network Deployment with Terraform

This repository contains Terraform code to deploy a hub-and-spoke network topology on Azure. The deployment includes:
- A hub virtual network.
- Three spoke virtual networks.
- Peerings between the hub and each spoke.

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

- Hub Virtual Network ID
- Spoke Virtual Network IDs
- Peering IDs between Hub and Spokes

## Contributing

Feel free to submit issues or pull requests for improvements.
