Auto Scaling Group

## Description

This terraform project has:
- Launch Template with Amazon linux AMI
- 2 dynamic scaling policies: 1 step scaling policy and 1 simple scaling policy
- monitored CPU metric in CloudWatch and its threshold values for scaling policies
- 1 scheduled action