#------------------------------------------VPC Module--------------------------------------------------------#
module "vpc_main" {
  source                              = "git::https://github.com/CHERUKURIPRAVEEN/aws-vpc-module.git?ref=v0.8.0"
  region                              = var.region
  vpc_name                            = var.vpc_name
  cidr_block                          = var.cidr_block
  enable_dns_hostnames                = var.enable_dns_hostnames
  public_subnets                      = var.public_subnets
  private_subnets                     = var.private_subnets
  private_dns_hostname_type_on_launch = var.private_dns_hostname_type_on_launch
  map_public_ip_on_launch             = var.map_public_ip_on_launch
  environment                         = var.environment
  create_nat_gateway                  = var.create_nat_gateway
  single_nat_gateway                  = var.single_nat_gateway
  tags                                = var.tags
}
