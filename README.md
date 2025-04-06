# hello-world-gcp

# View project
https://hello-world-xe4gocz25q-uc.a.run.app/

# To recreate in your own repository
1. git clone this repository to yours
1. Adjust bucket name to your own in infrastructure/terraform/backend.tf
1. Create secret variables with your own IAM Service Account and Project ID
1. That's it! Because the deployment works in a pipeline nothing else is necessary.

# Goal
1. "Hello World" application on GCP that responds to HTTP requests.
1. Use Terraform for IaC, Python for programming, and containerize using Docker

