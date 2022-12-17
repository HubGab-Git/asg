resource "aws_launch_template" "template" {
  name          = "template"
  instance_type = var.instance_type
  image_id      = var.ami

  instance_market_options {
    market_type = "spot"
  }

}