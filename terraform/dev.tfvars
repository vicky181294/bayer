region         = "us-east-1"
vpc_cidr       = "10.0.0.0/16"
subnet_cidrs   = ["10.0.1.0/24", "10.0.2.0/24"]
app_name       = "bayer"
container_port = 3000
pub_subnet_1   = "10.0.1.0/24"
pub_subnet_2   = "10.0.2.0/24"
env            = "dev"
domain         = "bayer"
log_group_name = "ecs/dev/bayer/"