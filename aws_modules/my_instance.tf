#Ec2 Instance

resource "aws_instance" "my-instance" {
  count = var.instance_count
  ami = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "${var.my-env}-travell-instance"  #instance name
  }
}