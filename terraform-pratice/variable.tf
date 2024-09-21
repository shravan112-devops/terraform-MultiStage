variable "dynamodb_table_name" {
	type = string
	default = "dynamodb-terra-table"
	description = "This is the dynamodb table name"
}

variable "ami" {
	type = string
	default = "ami-085f9c64a9b75eed5"
	description = "This is the ami id for ec2 (ubuntu)"
}
