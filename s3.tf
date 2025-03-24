resource "aws_s3_bucket" "apt-bucket" {
  #args
  bucket = "travell-bucket"
  tags = {
    name = "travell-bucket"
  }
}