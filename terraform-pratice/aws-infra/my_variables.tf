
variable "env" {
	description = "This is my environment for infra"
	type = string
}

variable "ami"  {
	description = "This is ami for ec2"
	type = string
}

variable "instance_type" {
	description = "this is instance type"
	type = string
}

variable "instance_count" {
	description = "this is the count "
	type = number
} 
