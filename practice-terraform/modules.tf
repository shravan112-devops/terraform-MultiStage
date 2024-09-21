
module "dev-app" {
	source = "./aws-infra"
	env = "dev"
	instance_type = "t2.micro"
	ami = "ami-085f9c64a9b75eed5"
	instance_count = 1
}

module "stg-app" {
        source = "./aws-infra"
        env = "stg"
        instance_type = "t2.nano"
        ami = "ami-085f9c64a9b75eed5"
	instance_count = 2
}

module "prd-app" {
        source = "./aws-infra"
        env = "prd"
        instance_type = "t2.small"
        ami = "ami-085f9c64a9b75eed5"
	instance_count = 3
}
