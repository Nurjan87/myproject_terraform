resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.def.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.id}"
  }

  tags = {
    Name = "${var.Name}private"
    Env = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept = "${var.Dept}"
  }
}