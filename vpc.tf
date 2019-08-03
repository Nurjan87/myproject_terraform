resource "aws_vpc" "dev" {
  cidr_block = "10.0.0.0/16" 


  resource "aws_subnet" "main" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}
}

