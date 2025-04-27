variable "backend_bucket" {
  type        = string
  description = "S3 bucket for Terraform state"
}

variable "backend_key" {
  type        = string
  description = "Path/key in S3 bucket for state file"
}

variable "backend_region" {
  type        = string
  description = "AWS region for the S3 backend"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Deployment environment (main | PR-<id>)"
}

variable "confluent_cloud_api_key" {
  description = "Confluent Cloud API Key (also referred as Cloud API ID)"
  type        = string
}

variable "confluent_cloud_api_secret" {
  description = "Confluent Cloud API Secret"
  type        = string
  sensitive   = true
}
