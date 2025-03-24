#S3 bucket

resource "aws_s3_bucket" "apt-bucket" {
  #args
  bucket = "${var.my-env}-travell-bucket"
  tags = {
    Name = "${var.my-env}-travell-bucket"
    environment = var.my-env
  }
}