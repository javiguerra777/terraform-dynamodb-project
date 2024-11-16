# Terraform S3 Bucket Project

This project uses Terraform to create a basic S3 bucket on AWS.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS account with appropriate permissions
- AWS CLI configured with your credentials

## Project Structure
```
├── .gitignore
├── .terraform/ 
├── .terraform.lock.hcl 
├── bucket.tf 
├── provider.tf 
├── README.md 
├── terraform.tfstate 
├── terraform.tfstate.backup 
├── variables.tf
```

## Files
- `bucket.tf`: Defines the S3 bucket resource.
- `provider.tf`: Configures the AWS provider.
- `variables.tf`: Contains the variables used in the project.
- `.gitignore`: Specifies files and directories to be ignored by Git.
- `README.md`: Project documentation.

## Getting Started

1. Clone the repository:
    ```sh
    git clone https://github.com/javiguerra777/terraform-s3-project.git
    ```

2. After cloning the repository to your computer you will see a folder called `terraform-s3-project`, open this folder in a code editor of choice. 

3.  **Create a `variables.tf` file:**
    You will need to create a `variables.tf` file and structure it like this before you run the terraform project:
    ```hcl
    variable "bucket_name" {}
    variable "acl_value" {
      default = "private"
    }
    variable "aws_access_key" {
      default = "aws access key"
    }
    variable "aws_secret_key" {
      default = "aws secret key"
    }
    variable "region" {
      default = "us-west-1"
    }
    ```

## Usage

1. Initialize Terraform:
    ```sh
    terraform init
    ```

2. Review the plan:
    ```sh
    terraform plan
    ```

3. Apply the configuration:
    ```sh
    terraform apply
    ```

4. When prompted enter a bucket name of choice for your s3 bucket (this value must be unique) 

5. Confirm the apply step by typing `yes`.

6. If you go to your AWS S3 buckets you can see the newest s3 bucket you created

## Variables

- `bucket_name`: The name of the S3 bucket.
- `acl_value`: The ACL policy for the bucket (default: `private`).
- `aws_access_key`: Your AWS access key.
- `aws_secret_key`: Your AWS secret key.
- `region`: The AWS region to create the bucket in (default: `us-west-1`).

## Outputs

- `bucket_arn`: The ARN of the created S3 bucket.
- `bucket_domain_name`: The domain name of the created S3 bucket.

## Cleanup

To destroy the created resources, run:
```sh
terraform destroy
```