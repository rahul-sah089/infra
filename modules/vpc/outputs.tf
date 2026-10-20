output "vpc_id" {
  description = "ID of the created VPC."
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "IDs of the public subnets."
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "IDs of the private application subnets."
  value       = module.vpc.private_subnets
}

output "database_subnets" {
  description = "IDs of the private database subnets."
  value       = module.vpc.database_subnets
}

output "database_subnet_group_name" {
  description = "Name of the RDS database subnet group."
  value       = module.vpc.database_subnet_group_name
}
