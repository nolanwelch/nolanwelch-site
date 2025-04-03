resource "cloudflare_record" "root_cname" {
  zone_id = var.zone_id
  name    = "nolanwelch.com"
  type    = "CNAME"
  content = var.pages_domain
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  name    = "www"
  type    = "CNAME"
  content = var.pages_domain
  proxied = true
}

resource "cloudflare_record" "track" {
  zone_id = var.zone_id
  name    = "track"
  type    = "CNAME"
  content = "example.com"
  proxied = true
}

resource "cloudflare_record" "track_dev" {
  zone_id = var.zone_id
  name    = "track-dev"
  type    = "CNAME"
  content = "example.com"
  proxied = true
}
