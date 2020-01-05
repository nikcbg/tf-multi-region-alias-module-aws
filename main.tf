# module code for Terraform Private module registry


provider "aws" {
  alias = "east-r"
}

provider "aws" {
  alias = "west-r"
}

resource "aws_instance" "east" {
  provider      = aws.east-r
  ami           = "ami-04b9e92b5572fa0d1"
  instance_type = "t2.micro"

  tags = {
    Name = "some-name"
  }
}

resource "aws_instance" "west" {
  provider      = aws.west-r
  ami           = "ami-06d51e91cea0dac8d"
  instance_type = "t2.micro"

  tags = {
    Name  = "some-name"
  }
} 
