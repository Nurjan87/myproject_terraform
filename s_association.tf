resource "aws_ssm_association" "a" {
  name = "${aws_ssm_document.public.id}"
  
}