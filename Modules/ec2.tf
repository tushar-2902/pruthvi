resource "aws_instance" "web" {
  ami                    = "ami-019715e0d74f695be"
  instance_type          = "t3.micro"
  key_name               = "tushar"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install nginx -y
              systemctl start nginx
              systemctl enable nginx
              EOF
}


