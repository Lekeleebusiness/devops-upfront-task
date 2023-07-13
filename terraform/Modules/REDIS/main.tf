resource "aws_security_group" "redis_sg" {
  name        = "redis-security-group"
  description = "Security group for Redis cluster"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    security_groups  = var.cluster_sg_id  
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Redis Security Group"
  }
}

resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = "redis-subnet-group"
  subnet_ids =  var.db_subnet_ids
}

# resource "aws_elasticache_replication_group" "redis_cluster" {
#   replication_group_id         = "redis-cluster"
#   engine                       = "redis"
#   port                         = var.redis_port
#   automatic_failover_enabled   = true
#   num_cache_clusters           = 2
#   subnet_group_name           = aws_elasticache_subnet_group.redis_subnet_group.name

#   node_type = "cache.t2.micro"  

#   security_group_ids = [aws_security_group.redis_sg.id]

#   transit_encryption_enabled = true
#   at_rest_encryption_enabled = true

#   parameter_group_name = "default.redis6.x"

#   tags = {
#     Name = "Redis Cluster"
#   }
# }

resource "aws_elasticache_cluster" "redis" {
  cluster_id           = "jobleads-redis-cluster"
  engine               = "redis"
  node_type            = var.node_type
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"
  engine_version       = var.engine_version
  port                 = var.redis_port

  subnet_group_name    = aws_elasticache_subnet_group.redis_subnet_group.name
  security_group_ids   = [aws_security_group.redis_sg.id]
}