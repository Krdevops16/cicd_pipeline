resource "aws_instance" "PLCIAMAUTO2" {
  #name						   = "PLCIAMAUTO2"
  ami                          = "ami-08dc6987db6e0b656"
  availability_zone		       = "eu-west-1a"
  instance_type                = "t2.large"
  associate_public_ip_address = "true"
  subnet_id                    = "subnet-0e4045a6b86aeb9e5"
  key_name                     = "key-ciam-np-euwe01-01"
  iam_instance_profile         = "iar-SsmAdmin"
  #security_groups      	   = ["sg-0154987bb88768b59"]
  disable_api_termination      = "false"  
  
  root_block_device {
    volume_type = "gp2"
    volume_size = 20
	}

  ebs_block_device {
    device_name = "xvdf"
    volume_type = "gp2"
    volume_size = 50
	}
  tags = {
        Name = "PLCIAMAUTO2"
        Env = "NonPROD"
    }
}