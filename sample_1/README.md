# Azure Terraform Sample Projects

This repository contains Terraform sample projects to deploy infrastructure on Microsoft Azure. Each project is designed to demonstrate a specific aspect of infrastructure deployment using Terraform.

## Structure

- `virtual_network/` - Create a hub-and-spoke network topology.
- `vm_deployment/` - Deploy a virtual machine with necessary configurations.
- `storage_account/` - Set up a secure storage account with necessary settings.

## Instructions

1. Install [Terraform](https://www.terraform.io/downloads).
2. Install the [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli).
3. Authenticate with Azure using `az login`.
4. Clone this repository: `git clone https://github.com/<your_username>/azure-terraform-samples.git`
5. Navigate to the desired project directory and follow the steps below.

### Common Steps for All Projects

1. Initialize Terraform:
   ```bash
   terraform init
   ```

2. Preview the changes:
   ```bash
   terraform plan
   ```

3. Apply the changes:
   ```bash
   terraform apply
   ```
   Confirm the changes by typing `yes` when prompted.

4. Clean up resources after use:
   ```bash
   terraform destroy
   ```

---

## Contributions

Feel free to fork and create pull requests to improve the examples.
