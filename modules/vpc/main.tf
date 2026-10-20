module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 6.0"

  name = "${var.project}-${var.env}-vpc"
  cidr = var.vpc_cidr

  # Select two Availability Zones in the configured AWS region.
  azs = slice(
    data.aws_availability_zones.available.names,
    0,
    2
  )

  public_subnets   = var.public_subnet_cidrs
  private_subnets  = var.private_subnet_cidrs
  database_subnets = var.database_subnet_cidrs

  enable_dns_hostnames = true
  enable_dns_support   = true

  enable_nat_gateway = false
  single_nat_gateway = false

  create_database_subnet_group = true

  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb"                         = "1"
    "kubernetes.io/cluster/${var.project}-${var.env}-cluster" = "owned"
  }

  tags = {
    Project = var.project
    Env     = var.env
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}
