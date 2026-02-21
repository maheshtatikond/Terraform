variable "environment" {
    type = string
    default = "dev"
    description = "Environment for the resources"
}
  


variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5"
    description = "RHEL-9-Image"
}

variable "instance_type" {
   type = string
    default = "t3.micro"
    description = "Instance type for EC2"
}

variable "ec2_tags" {
    type = map
    default = {
        name = "variables-terraform-instance"
        Project = "roboshop"
        ENV = "dev"
        Terraform = "true"
    }
    description = "Tags for EC2 instance"
}

variable "sg_name" {
    type = string
    default = "allow-all-terraform"
    description = "Security group name"
 
}

variable "sg_description" {
    type = string
    default = "Allow all inbound traffic and outbound traffic"
    description = "Security group description"
}
variable "sg_from_port" {
  type = number
  default = 0
}

variable "sg_to_port" {
  type = number
  default = 0
}

variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(string)
  default = {
    name = "allow-all-terraform"
    type = "terraform"
    ENV = "dev"
  }
}

