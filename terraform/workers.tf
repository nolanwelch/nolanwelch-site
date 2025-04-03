resource "cloudflare_workers_script" "referral_tracker" {
  account_id = var.account_id
  name       = "referral-tracker-production"
  content    = file("workers/index.js")
}

resource "cloudflare_workers_route" "track_subdomain" {
  zone_id     = var.zone_id
  pattern     = "track.${var.domain}/*"
  script_name = "referral-tracker"
}
