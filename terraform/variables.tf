variable "cloudflare_api_token" {
  type        = string
  sensitive   = true
  description = "Cloudflare API token with DNS + Workers permissions"
}

variable "account_id" {
  type        = string
  description = "Cloudflare Account ID"
}

variable "zone_id" {
  type        = string
  description = "Cloudflare Zone ID for the domain"
}

variable "domain" {
  type        = string
  default     = "nolanwelch.com"
  description = "Primary domain name used for routing"
}

variable "pages_domain" {
  type        = string
  default     = "nolanwelch-site.pages.dev"
  description = "Cloudflare Pages deployment hostname"
}
