resource "aws_autoscaling_schedule" "after_work" {
  scheduled_action_name  = "schedule"
  min_size               = 0
  max_size               = 1
  desired_capacity       = 0
  recurrence             = "0 18 * * *"
  autoscaling_group_name = aws_autoscaling_group.example.name
}

resource "aws_autoscaling_schedule" "before_work" {
  scheduled_action_name  = "schedule"
  min_size               = 1
  max_size               = 3
  desired_capacity       = 1
  recurrence             = "0 10 * * *"
  autoscaling_group_name = aws_autoscaling_group.example.name
}