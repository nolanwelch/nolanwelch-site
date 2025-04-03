resource "cloudflare_workers_kv_namespace" "referral_kv_dev" {
  title      = "REFERRAL_KV_DEV"
  account_id = var.account_id
}

resource "cloudflare_workers_kv_namespace" "referral_kv_prod" {
  title      = "REFERRAL_KV_PROD"
  account_id = var.account_id
}

output "referral_kv_dev_id" {
  value       = cloudflare_workers_kv_namespace.referral_kv_dev.id
  description = "ID for the development KV namespace"
}

output "referral_kv_prod_id" {
  value       = cloudflare_workers_kv_namespace.referral_kv_prod.id
  description = "ID for the production KV namespace"
}