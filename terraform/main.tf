# Provider

variable "ami_name" {}
variable "ami_key_pair_name" {}

# Create EC2 Test instance
resource "aws_instance" "kenot-test-instance" {

  key_name = "${var.ami_key_pair_name}"
#  subnet_id = ""
  ami = "${var.ami_name}"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  disable_api_termination = "false"
  monitoring = "false"
  vpc_security_group_ids = ["${aws_security_group.kenot-test-sg.id}"]

  tags = {
    Name = "kenot-test-instance"
  }
}

# Create Test SG
resource "aws_security_group" "kenot-test-sg" {
    vpc_id      = ""
    name = "kenot-test-sg"
    description = "Test Security group"
    tags = {
        Name = "kenot-test-sg"
    }
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 0
        to_port = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
      from_port = -1
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks     = ["0.0.0.0/0"]
    }
}
