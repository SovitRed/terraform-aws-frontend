terraform {
  backend "s3" {
    bucket = "home-inspection-frontend-001"
    key    = "frontend/terraform.tfstate"
    region = "us-east-1"
    
  }
}