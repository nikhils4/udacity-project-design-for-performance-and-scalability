# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAWUFBSDBXKZRNS2OB"
  secret_key = "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"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  ami           = "ami-026b57f3c383c2eec"
  count         = "4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0a8d1f32378b462c2"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# Commenting to delete
# resource "aws_instance" "Udacity_M4" {
#   ami           = "ami-026b57f3c383c2eec"
#   count         = "2"
#   instance_type = "m4.large"
#   subnet_id     = "subnet-0a8d1f32378b462c2"
#   tags = {
#     Name = "Udacity M4"
#   }
# }