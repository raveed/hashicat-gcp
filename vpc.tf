module "network" {
  source  = "app.terraform.io/dinesh-training/network/google"
  version = "2.5.0"
  # insert required variables here
  project_id   = var.project
  network_name = "dinesh-network"
  subnets = [
    {
      subnet_name   = "ravee-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}