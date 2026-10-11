output "xray_encryption_configs_id" {
  description = "Map of id values across all xray_encryption_configs, keyed the same as var.xray_encryption_configs"
  value       = { for k, v in aws_xray_encryption_config.xray_encryption_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "xray_encryption_configs_key_id" {
  description = "Map of key_id values across all xray_encryption_configs, keyed the same as var.xray_encryption_configs"
  value       = { for k, v in aws_xray_encryption_config.xray_encryption_configs : k => v.key_id if v.key_id != null && length(v.key_id) > 0 }
}
output "xray_encryption_configs_region" {
  description = "Map of region values across all xray_encryption_configs, keyed the same as var.xray_encryption_configs"
  value       = { for k, v in aws_xray_encryption_config.xray_encryption_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "xray_encryption_configs_type" {
  description = "Map of type values across all xray_encryption_configs, keyed the same as var.xray_encryption_configs"
  value       = { for k, v in aws_xray_encryption_config.xray_encryption_configs : k => v.type if v.type != null && length(v.type) > 0 }
}

