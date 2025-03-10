# Creating Elastic IPAddress
resource "aws_eip" "terraform-instance-eip" {
  instance = aws_instance.terraform.id
  vpc =  true
}