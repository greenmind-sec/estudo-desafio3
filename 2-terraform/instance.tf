variable "ami_id" {
  default = "i-08b453be1c6d004bc"
  description = "Julio César"
}

variable "subnet_id" {
  default = "subnet-4d061a07"
}


provider "aws" {
  region = "us-east-1"
  shared_credentials_file = ".aws/credentials"
  profile = "giropops"
}

resource "aws_instance" "my-key" {
  tags = {
    Name = "Julio.Cesar-Desafio3"
  }
  ami = "ami-015948fdfbb2dca13"
  instance_type = "t2.micro"
  key_name = "juliocesar-desafio1"
  user_data = <<EOF
#! /bin/bash
sudo service mariadb start
sudo service nginx start
sudo rm -rf /run/php/ && sudo mkdir /run/php/
sudo chmod 755 /run/php/
sudo service php-fpm restart
	EOF

  subnet_id = "subnet-4d061a07"
  #security_groups = ["${aws_security_group.allow_ssh.name}"]
  vpc_security_group_ids = [ "${aws_security_group.allow_ssh.id}" ]
}

#resource "aws_key_pair" "my-key-greenmind" {
#  key_name = "my-key-greenmind"
  #public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDDWYzMmDR+0WyUh9Yg2U1/ZAKiiTSYkMepuNgNoFoEgUXM1Tub/6ZQSxcEZFqcvF2F5RjGmKDQTDyVTwQiBYMMHFuDHfdnklQ+nllUVtHoA2JeVeBnscmI2bY6kuppZNWXZsqmQ2gPS3LKEE6RwIiU/bE9sGBuSd4m90fJGp+3Bg98bSoKTo/NXYF2AZmim7EdpSlvANHHtPA/7dU2zi9GtZ3SLEoMls446hDqvdti/9o0hTj5/c1eYGhdNaFB7uo9Xspn5ws+PuWRgFAElskoAG1Vt9F476h/nToZvh+mHt4sjlFnHk2oyXkXY0kzdDIy8z1veqE/dXVOqohB8FMZ8BGeYfWSNjGtB68+fYW/Kl3RKPo/+Fip0wlV+73BQ3DfZFCjqAsJz/0Sfh0vUg2bRpi/fexLyijgqVIMYURe4lB734DfiUTSJzv2kYrwLgtmVT9GmhXYOVeYs+P7dOk39dskNWaR6ekO8AwszFDy/IcNUzsYODCK8HFhalIHwWc= greenmind@work"
#  public_key = "juliocesar-desafio1"
#}

resource "aws_security_group" "allow_ssh" {
  name = "JulioCesar-Desafio2"
  description = "Security group - JC"
  vpc_id = "vpc-fc37ae86"
  ingress {
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = "443"
    to_port = "443"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = "22"
    to_port   = "22"
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

output "example_public_dns" {
  value = "${aws_instance.my-key.public_dns}"
}
