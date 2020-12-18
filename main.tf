provider "aws" {
  region = "eu-west-2"
}

variable "vpc_name" {
  type = list(string)
  default = ["test1", "test2"]

}

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpc_name[0]
  }
}
resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpc_name[1]
  }
}