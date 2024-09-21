
resource "aws_s3_bucket" "my-bucket" {
        bucket = "${var.env}-terraform-pratice-45"
        tags = {
                Name = "${var.env}-terraform-practice-bucket"
		environment = var.env
}
}
