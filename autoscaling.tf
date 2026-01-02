resource "aws_launch_template" "tomcat_lt" {
  image_id      = aws_instance.tomcat.ami
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "tomcat_asg" {
  desired_capacity = 2
  max_size         = 4
  min_size         = 1
  vpc_zone_identifier = [
    aws_subnet.private_1.id,
    aws_subnet.private_2.id
  ]
  launch_template {
    id      = aws_launch_template.tomcat_lt.id
    version = "$Latest"
  }
}
