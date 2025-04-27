provider "aws" {
  region = var.backend_region
}

module "confluent_cloud" {
  source      = "./modules/infrastructure/confluent-cloud"
  environment = var.environment
  confluent_cloud_api_key = var.confluent_cloud_api_key
  confluent_cloud_api_secret = var.confluent_cloud_api_secret
}
}
