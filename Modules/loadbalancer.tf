resource "aws_lb" "test" {
  name               = "test-lb-tf"
  load_balancer_type = "application"
  security_groups    = [aws_security_group.allow_tls.id]
  subnets            = data.aws_subnets.example.ids
}
