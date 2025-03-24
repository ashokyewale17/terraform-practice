variable "my-env" {
  description = "This is for environment for infra"
  type = string
}

variable "ami_id" {
  description = "This is AMI id for Ec2 instance"
  type = string
}

variable "instance_type" {
  description = "This is for ec2 instance type"
  type = string
}

variable "instance_count" {
  description = "This is for ec2 instance count"
  type = number
}