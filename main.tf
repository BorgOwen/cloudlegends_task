provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "docker_sg" {
  name_prefix = "docker-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "docker_ec2" {
  ami           = "ami-020cba7c55df1f615" # Ubuntu 22.04 in us-east-1
  instance_type = "t2.micro"
  key_name      = "docker" # Replace with your EC2 key pair
  associate_public_ip_address = true
  vpc_security_group_ids = [aws_security_group.docker_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install docker.io -y
              sudo systemctl start docker
              sudo docker run -d -p 80:5000 borgx/flask-docker
              EOF

  tags = {
    Name = "FlaskDockerApp2"
  }
}

