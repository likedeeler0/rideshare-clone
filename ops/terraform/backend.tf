terraform {
  backend "s3" {
    bucket = "terraform-state-rider-driver-connection"
    key    = "terraform/state.tfstate"
    region = "us-east-2"
  }
}
