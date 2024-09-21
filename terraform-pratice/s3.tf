
resource "aws_s3_bucket" "my-bucket" {
	bucket = "terraform-pratice-45"
	tags = {
		Name = "terraform-practice-bucket"
} 
}
