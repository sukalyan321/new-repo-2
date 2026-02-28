terraform {
  backend "s3" {
    bucket         = "sukas-terraform-state-bucket"   # change this
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}