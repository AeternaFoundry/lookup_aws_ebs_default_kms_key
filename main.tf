data "aws_ebs_default_kms_key" "ebs_default_kms_key_lookup" {
  for_each = var.ebs_default_kms_key_lookup

  region = each.value.region
}

