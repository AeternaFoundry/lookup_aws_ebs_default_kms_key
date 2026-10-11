variable "ebs_default_kms_key_lookup" {
  description = <<EOT
Map of ebs_default_kms_key_lookup, attributes below
Optional:
    - region
EOT

  type = map(object({
    region = optional(string)
  }))
}

