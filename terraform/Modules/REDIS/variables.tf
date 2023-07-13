variable "db_subnet_ids" {
  type = list(string)
}

variable "vpc_id" {
  type = string
  description = "The id of the vpc is used here"
}

variable "cluster_sg_id" {
  type = list(string)
}

variable "redis_port" {
  default = 6379
}

variable "node_type"{
    default =  "cache.t2.micro"
}

variable "engine_version" {
  default = "3.2.10"
}