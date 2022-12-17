resource "aws_autoscaling_policy" "simple_scaling_up" {
  name                   = "simple-scaling-policy-up"
  scaling_adjustment     = 1
  adjustment_type        = "ChangeInCapacity"
  policy_type            = "SimpleScaling"
  autoscaling_group_name = aws_autoscaling_group.example.name
}

resource "aws_autoscaling_policy" "simple_scaling_down" {
  name                   = "simple-scaling-policy-down"
  scaling_adjustment     = -1
  adjustment_type        = "ChangeInCapacity"
  policy_type            = "SimpleScaling"
  autoscaling_group_name = aws_autoscaling_group.example.name
}
resource "aws_autoscaling_policy" "step_scaling" {
  name                   = "step-scaling-policy"
  adjustment_type        = "ExactCapacity"
  policy_type            = "StepScaling"
  autoscaling_group_name = aws_autoscaling_group.example.name
  step_adjustment {
    scaling_adjustment          = 3
    metric_interval_upper_bound = 0
  }
}