resource "aws_instance" "terraforminstance" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    name = "roboshop-terraform-instance"
    type = "terraform"
    ENV = "dev"
  }

}

resource "aws_security_group" "allow_tls" {
  name        = "allow-all-terraform" #for aws 
  description = "Allow all inbound traffic and outbound traffic"

    ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

tags = {
    name = "allow-all-terraform"
    type = "terraform"
    ENV = "dev"
  }
  

  
}