variable "xray_encryption_configs" {
  description = <<EOT
Map of xray_encryption_configs, attributes below
Required:
    - type
Optional:
    - key_id
    - region
EOT

  type = map(object({
    type   = string
    key_id = optional(string)
    region = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

