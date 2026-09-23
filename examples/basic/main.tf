#####################################################################################
# Terraform module examples are meant to show an _example_ on how to use a module
# per use-case. The code below should not be copied directly but referenced in order
# to build your own root module that invokes this module.
#
# This example is self-contained and requires only `project_id`: it creates a
# Redis instance and a credential on it.
#####################################################################################

module "redis" {
  source = "../.."

  project_id    = var.project_id
  name          = "example-redis"
  redis_version = "7"
  plan_name     = "stackit-redis-single-4"

  parameters = {
    sgw_acl = "0.0.0.0/0"
  }

  credentials = {
    app = {}
  }
}
