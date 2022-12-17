resource "aws_cloudwatch_metric_alarm" "simple_alarm_up" {
  alarm_name          = "cpu_alarm_up"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "60"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.example.name
  }

  alarm_description = "This metric monitor EC2 instance CPU utilization"
  alarm_actions     = [aws_autoscaling_policy.simple_scaling_up.arn]
}

resource "aws_cloudwatch_metric_alarm" "simple_alarm_down" {
  alarm_name          = "cpu_alarm_down"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "10"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.example.name
  }

  alarm_description = "This metric monitor EC2 instance CPU utilization"
  alarm_actions     = [aws_autoscaling_policy.simple_scaling_down.arn]
}

resource "aws_cloudwatch_metric_alarm" "step_alarm_up" {
  alarm_name          = "step_alarm_up"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "90"

  dimensions = {
    AutoScalingGroupName = aws_autoscaling_group.example.name
  }

  alarm_description = "This metric monitor EC2 instance CPU utilization"
  alarm_actions     = [aws_autoscaling_policy.step_scaling.arn]
}