variable "ALB_DELETION_PROTECTION" { default=true }

resource "aws_lb" "load-balancer" {
  name               = "my-demo-load-balancer"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.subnetfirst.id, aws_subnet.subnetsecond.id]
  enable_deletion_protection = var.ALB_DELETION_PROTECTION

  tags = {
    Environment = "demo"
  }
}
