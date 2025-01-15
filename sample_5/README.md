# Azure Infrastructure Deployment with Terraform

This repository contains Terraform code to deploy a basic infrastructure setup on Azure, including a resource group, virtual network, subnet, network interface, and a Linux virtual machine.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed.
- Azure CLI authenticated with appropriate permissions.
- SSH public key for the Linux virtual machine.

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

- Resource Group Name
- Virtual Network ID
- Subnet ID
- Public IP of the VM

## Contributing

Feel free to submit issues or pull requests for improvements.
