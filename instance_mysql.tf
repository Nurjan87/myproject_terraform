resource "aws_incatance" "mysql'{
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "${var.key_name}"
    subnet_id = "${aws_subnet.private.id}"
    user_data = "${file(userdat.sh)}"
    count = "${var.count}"
    vpc_security_gorup_ids = "${aws_security_group.private.id"
    associate_public_ip_address = "true"


    tags = {
    Name = "${var.Name}
    Env = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept = "${var.Dept}"
  }
}