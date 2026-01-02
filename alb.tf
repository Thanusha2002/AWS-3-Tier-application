resource "aws_lb" "alb" {
  name               = "studentapp-alb"
  internal           = false
  load_balancer_type = "application"
  subnets = [
    aws_subnet.public_1.id,
    aws_subnet.public_2.id
  ]
  security_groups = [aws_security_group.alb_sg.id]
}
