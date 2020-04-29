resource "aws_security_group" "autocisg" {
  name        = "autocisg"
  description = "Allow AUTO"
  vpc_id      = "vpc-08a61f27ae4fba698"
 
  ingress {
    description = "AUTO from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
    
  }
 
 ingress {
    description = "AUTO from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    description = "AUTO from VPC"
    from_port   = 9999
    to_port     = 9999
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  } 
  ingress {
    description = "AUTO from VPC"
    from_port   = 9031
    to_port     = 9031
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }
  ingress {
    description = "AUTO from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/8"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "autocisg"
  }
}
