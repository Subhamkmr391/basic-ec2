provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAS3WB72JTF2VQ2D4P"
  secret_key = "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"
}

resource "aws_eip" "eip" {
  domain = "vpc"
}

resource "aws_instance" "first_ec2" {
  ami           = "ami-0d92749d46e71c34c"
  instance_type = "t2.micro"

  tags = {
    Name = "First_ec2"
  }
  
}


resource "aws_instance" "second_ec2" {
  ami           = "ami-0d92749d46e71c34c"
  instance_type = "t2.micro"

  tags = {
    Name = "second_ec2"
  }


}
