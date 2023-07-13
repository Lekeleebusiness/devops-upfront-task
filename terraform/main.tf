module "vpc" {
  source = "./Modules/VPC" 
}

module "eks" {
  source = "./Modules/EKS"
  vpc_id = module.vpc.vpc_id
  private_subnet_ids = module.vpc.private_subnet_ids 
}

module "redis"{
  vpc_id = module.vpc.vpc_id
  source = "./Modules/REDIS"
  db_subnet_ids = module.vpc.database_subnet_ids
  cluster_sg_id = module.eks.eks_cluster_sg_id
}

