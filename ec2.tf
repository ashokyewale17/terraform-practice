#key pair

resource "aws_key_pair" "deployer" {
  key_name = "tt-terra-key"
  public_key = file("C:\\Users\\Udeep\\Documents\\GitHub\\terraform-practice\\terra-key.pub")
}

#default vpc
resource "aws_default_vpc" "default" {
  
}

#security group
resource "aws_security_group" "yewale-sg" {
  name = "allow ports"
  description = "This SG is to open for ec2 instances"
  vpc_id = aws_default_vpc.default.id  #interpolation

  #incoming traffic  
  ingress {
    description = "this is for ssh"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #outgoing traffic
  egress {
    description = "this is for outgoing internet"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "my-instance" {
  ami = var.ami_id
  instance_type = "t2.micro"
  key_name = aws_key_pair.deployer.key_name  #key
  security_groups = [aws_security_group.yewale-sg.name]  #security group
  tags = {
    Name = "terra-automate"  #instance name
  }
}

resource "aws_ec2_instance_state" "my-instance" {
  instance_id = aws_instance.my-instance.id
  state       = "running" #instance state
}
