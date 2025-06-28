module "backend_alb" {
  source = "terraform-aws-modules/alb/aws"

  name    = "${var.project}-${var.environment}-backend-alb" # roboshop-dev-backend-alb
  vpc_id  = local.vpc_id
  subnets = local.private_subnet_ids
  create_security_group = false
  security_groups = [local.backend_alb_sg_id]
  
  tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-backend-alb"
    }
  )
}