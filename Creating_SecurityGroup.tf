# Create the Security Group
resource "aws_security_group" "My_RDP_Deployment-Only" {
  vpc_id       = "vpc-0486f43c1b99af680"
  name         = "My_RDP_Deployment-Only"
  description  = "RDP Deployment Only"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["146.196.36.101/32"]
  }

 ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["146.196.36.101/32"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
	}
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.My_RDP_Deployment-Only.id
  network_interface_id = aws_instance.terraform.primary_network_interface_id
}