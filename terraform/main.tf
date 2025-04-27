provider "aws" {
  region = var.backend_region
}

provider "confluent" {
  cloud_api_key    = var.confluent_cloud_api_key
  cloud_api_secret = var.confluent_cloud_api_secret
}

module "confluent_cloud" {
  source      = "./modules/infrastructure/confluent-cloud"
  environment = var.environment
}
