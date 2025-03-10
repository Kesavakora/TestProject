# Create AWS EC2 Instance

resource "aws_instance" "terraform" {
  ami				= "ami-02fe94dee086c0c37"
  instance_type		= "t2.micro"
  key_name			= "keshavakora@yahoo.com"
  subnet_id 		= "subnet-00812623eb97b3e3d"
  #security_groups = ["${aws_security_group.My_RDP_Deployment-Only.name}"]
  tags				= {
  Name = "Terraform-instance"
  }
}
# End Creation of Ec2 Instance

# Installing the Apache2 software
/*
user_data = <<=EOF
#!/bin/bash
    exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1\
    /usr/bin/apt-get update
    DEBIAN_FRONEND=noninteractive /usr/bin/apt-get upgrade -yq
    /usr/bin/apt-get install apache2 -y
    /usr/sbin/utw allow in "Apache Full"
    /bin/echo "Hello world " >/var/www/html/index.html

    EOF

*/
# Ends here