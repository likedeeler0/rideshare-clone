provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "terraform-state-rider-driver-connection"
}

resource "aws_db_instance" "driver_locations_polled_10sec" {
  allocated_storage    = 10
  identifier           = "driver-locations-polled-10sec"
  db_name              = "driver_locations_polled_10sec"
  engine               = "postgres"
  engine_version       = "16.3"
  instance_class       = "db.t3.micro"
  username             = "devl"
  password             = var.AWS_PASSWORD
  skip_final_snapshot  = true
}

