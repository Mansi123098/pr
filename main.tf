provider "aws" {
  region = "ap-northeast-3"  
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "mansitasknew"  
  

  tags = {
    Name = "MyExampleBucket"
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-locks"
  billing_mode    = "PAY_PER_REQUEST" 
  hash_key        = "LockID"

  attribute {
    name = "LockID"
    type = "S"  
  }

  tags = {
    Name        = "Terraform Lock Table"
  }
}


resource "aws_instance" "mansitasknew" {
    ami = "ami-01fb4de0e9f8f22a7"
    instance_type = "t2.micro"
  
}

resource "aws_instance" "mansitasknew1" {
    ami = "ami-01fb4de0e9f8f22a7"
    instance_type = "t2.micro"
  
}
