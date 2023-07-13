variable "project_name" {
  description = "project name"
  default = "Jobleads"
}

variable "environment" {
  description = "environment"
  default = "dev"
}

variable "vpc_cidr_block" {
  description = "cidr block for the VPC"
  default = "10.0.0.0/16"
}

variable "public_1_cidr_block" {
  default = "10.0.1.0/24"
}

variable "public_2_cidr_block" {
  default = "10.0.2.0/24"
}

variable "private_1_cidr_block" {
  default = "10.0.3.0/24"
}

variable "private_2_cidr_block" {
  default = "10.0.4.0/24"
}

variable "database_cidr_block_1" {
  default = "10.0.5.0/24"
}

variable "database_cidr_block_2" {
  default = "10.0.6.0/24"
}


