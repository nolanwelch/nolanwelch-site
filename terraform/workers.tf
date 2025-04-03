resource "cloudflare_workers_route" "track_subdomain" {
  zone_id     = var.zone_id
  pattern     = "track.${var.domain}/*"
  script_name = "referral-tracker"
}
