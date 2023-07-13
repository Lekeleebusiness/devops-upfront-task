variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "project_name" {
  description = "project name"
  default = "Jobleads"
}

variable "environment" {
  description = "environment"
  default = "dev"
}

variable "private_subnet_ids" {
  description = "List of private subnet IDs"
}

variable "cluster_name" {
  description = "The name to give to this environment. Will be used for naming various resources."
  default = "Jobleads-Cluster"
}

variable "cluster_version" {
  default = "1.23"
}

variable "node_group_name" {
  default = "Jobleads-node-group"
}

variable "capacity_type" {
  default = "ON_DEMAND"
}

variable "disk_size" {
  default = "20"
}

variable "instance_types"{
  default =  ["t2.small"]
}

