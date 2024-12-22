## Artifact Registry for Docker Images

This repository contains Terraform code to create a Google Artifact Registry repository for storing Docker images.

### Prerequisites

* A Google Cloud Project with an active billing account.
* Terraform installed on your local machine or in the Google Cloud Shell.

### Getting Started

1. **Clone the repository:**

   ```bash
   git clone <repository_url>
   cd <repository_name>
   ```

2. **Install Terraform:**

   ```bash
   sudo apt-get update && sudo apt-get install -y terraform
   ```

### Configure Variables

* **`project_id`:** Replace `"your-gcp-project-id"` in `variables.tf` or `terraform.tfvars` with your actual Google Cloud Project ID.
* **`region`:** (Optional) Specify the desired region for the Artifact Registry repository. Defaults to "us-central1".

### Initialize Terraform

```bash
terraform init
```

### Plan the Changes

```bash
terraform plan
```

### Apply the Changes

```bash
terraform apply
```

* Confirm the changes by typing `yes`.

### Verify the Results

* Go to the Google Cloud Console and navigate to the Artifact Registry service.
* Verify that the new repository has been created successfully.

### Get the Repository URL

```bash
terraform output docker_registry_url
```

This will output the URL of the Docker image repository, which you can use for `docker push` commands.

### Cleaning Up

To delete the created resources:

```bash
terraform destroy
```

### Note

* This configuration provides a basic example. You can further customize it by adding IAM policies, integrating with CI/CD pipelines, and more.
* For production environments, consider using a secrets management solution to store sensitive information like your project ID.

**Disclaimer:**

This code is provided as an example and may require modifications to suit your specific needs and environment. Use it responsibly and at your own risk.
```
