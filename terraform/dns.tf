resource "cloudflare_record" "track" {
  zone_id = var.zone_id
  name    = "track"
  type    = "CNAME"
  content = "example.com"
  proxied = true
}
