# bitnami wordpress server
resource "aws_instance" "wordpress" {
  ami = var.wordpress_ami_id

  # free tier eligible
  instance_type = "t2.micro"

  # list of security groups for the instance
  security_groups = [
    aws_security_group.wordpress_security_group.name,
  ]

  availability_zone = var.zone

  key_name = var.ssh_key

  # add a public IP address
  associate_public_ip_address = true

  root_block_device {
    volume_type           = "standard"
    volume_size           = 40
    delete_on_termination = true
  }

  tags = {
    Name = var.server_name
  }
}

resource "aws_eip" "wordpress_eip" {
  instance = aws_instance.wordpress.id
}
