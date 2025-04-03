resource "cloudflare_workers_route" "track_subdomain" {
  zone_id     = var.zone_id
  pattern     = "track.${var.domain}/*"
  script_name = "referral-tracker"
}

resource "cloudflare_workers_route" "track_dev_subdomain" {
  zone_id     = var.zone_id
  pattern     = "track-dev.${var.domain}/*"
  script_name = "referral-tracker"
}
