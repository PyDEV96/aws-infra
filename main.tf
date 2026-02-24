module "ec2" {
  source        = "./modules/ec2"
  project_name  = var.project_name
  vpc_cidr      = var.vpc_cidr
  subnet_cidr   = var.subnet_cidr
  az            = var.az
  my_ip         = var.my_ip
  key_name      = var.key_name
}