resource "aws_instance" "tomcat" {
  ami           = "ami-0f58b397bc5c1f2e8" # Ubuntu 22.04 (Mumbai)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.private_1.id
  vpc_security_group_ids = [aws_security_group.tomcat_sg.id]

  user_data = <<EOF
#!/bin/bash
apt update -y
apt install openjdk-11-jdk -y
EOF

  tags = { Name = "tomcat-backend" }
}
