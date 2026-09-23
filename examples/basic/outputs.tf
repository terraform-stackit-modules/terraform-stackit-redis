output "instance_id" {
  description = "The ID of the Redis instance created by the example."
  value       = module.redis.instance_id
}

output "credential_ids" {
  description = "The credential IDs created by the example."
  value       = module.redis.credential_ids
}
