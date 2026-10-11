output "ebs_default_kms_key_lookup_id" {
  description = "Map of id values across all ebs_default_kms_key_lookup, keyed the same as var.ebs_default_kms_key_lookup"
  value       = { for k, v in data.aws_ebs_default_kms_key.ebs_default_kms_key_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ebs_default_kms_key_lookup_key_arn" {
  description = "Map of key_arn values across all ebs_default_kms_key_lookup, keyed the same as var.ebs_default_kms_key_lookup"
  value       = { for k, v in data.aws_ebs_default_kms_key.ebs_default_kms_key_lookup : k => v.key_arn if v.key_arn != null && length(v.key_arn) > 0 }
}
output "ebs_default_kms_key_lookup_region" {
  description = "Map of region values across all ebs_default_kms_key_lookup, keyed the same as var.ebs_default_kms_key_lookup"
  value       = { for k, v in data.aws_ebs_default_kms_key.ebs_default_kms_key_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

