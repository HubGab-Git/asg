resource "aws_autoscaling_group" "example" {
  desired_capacity   = 1
  max_size           = 3
  min_size           = 1
  availability_zones = var.az

  launch_template {
    id      = aws_launch_template.template.id
    version = "$Latest"
  }
}