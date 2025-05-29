# Minecraft Server Terraform Module

This project provides a Terraform configuration for deploying a Minecraft server on Azure. It is structured to support multiple environments, including development and production, by utilizing a reusable module.

## Project Structure

```
ServerMinecraft
├── environments
│   ├── dev
│   │   └── main.tf        # Development environment configuration
│   └── prod
│       └── main.tf        # Production environment configuration
├── modules
│   └── minecraft_server
│       ├── main.tf        # Module defining the Minecraft server resources
│       ├── variables.tf    # Input variables for the module
│       └── outputs.tf      # Output values from the module
└── README.md               # Project documentation
```

## Usage

### Setting Up the Development Environment

1. Navigate to the `environments/dev` directory.
2. Modify the `main.tf` file to set any environment-specific variables.
3. Initialize Terraform:
   ```
   terraform init
   ```
4. Apply the configuration:
   ```
   terraform apply
   ```

### Setting Up the Production Environment

1. Navigate to the `environments/prod` directory.
2. Modify the `main.tf` file to set any production-specific variables.
3. Initialize Terraform:
   ```
   terraform init
   ```
4. Apply the configuration:
   ```
   terraform apply
   ```

## Module Details

The `minecraft_server` module contains the necessary resources to deploy a Minecraft server, including:

- Resource Group
- Virtual Network
- Subnet
- Public IP
- Network Interface
- Network Security Group
- Linux Virtual Machine

### Input Variables

The `variables.tf` file in the `modules/minecraft_server` directory defines the input variables that can be customized for different environments.

### Output Values

The `outputs.tf` file in the `modules/minecraft_server` directory specifies the output values that can be used by the environment configurations.

## Requirements

- Terraform 1.x
- Azure account with appropriate permissions

## License

This project is licensed under the MIT License.