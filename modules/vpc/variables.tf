variable "project" {
  description = "Name of the project."
  type        = string
}

variable "env" {
  description = "Deployment environment, such as dev or qa."
  type        = string
}

variable "region" {
  description = "AWS region for this environment."
  type        = string
  default     = "ap-southeast-2"
}

variable "vpc_cidr" {
  description = "CIDR range for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR ranges for public subnets."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR ranges for private application subnets."
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "database_subnet_cidrs" {
  description = "CIDR ranges for private database subnets."
  type        = list(string)
  default     = ["10.0.5.0/24", "10.0.6.0/24"]
}
