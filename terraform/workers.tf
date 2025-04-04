resource "cloudflare_workers_script" "referral_tracker" {
  account_id = var.account_id
  name       = "referral-tracker"
  content    = file("workers/index.js")
  module     = true
}

resource "cloudflare_workers_route" "track_subdomain" {
  depends_on  = [cloudflare_workers_script.referral_tracker]
  zone_id     = var.zone_id
  pattern     = "track.${var.domain}/*"
  script_name = "referral-tracker"
}
