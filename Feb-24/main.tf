provider "aws" {
  region = "ap-south-1"
}

module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_value = "ami-04b4f1a9cf54c11d0"
    instance_type_value = "t2.micro"
    subnet_id_value = "subnet-0cdcd9c86a618fb70"
}

output "public-ip-address" {
    value = module.ec2_instance.public-ip-address
}
