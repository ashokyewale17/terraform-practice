variable "dynamodb_table_name" {
  type = string
  default = "tws-free-bootcamp-table"
  description = "This is table for dynamodb"
}

variable "ami_id" {
  default = "ami-00bb6a80f01f03502"
  type = string
  description = "this is for ec2 ubuntu ami id"
}