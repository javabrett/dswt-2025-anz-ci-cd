terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "2.25.0"
    }
  }
}

resource "confluent_kafka_cluster" "this" {
  display_name = "${var.environment}-cluster"
}
