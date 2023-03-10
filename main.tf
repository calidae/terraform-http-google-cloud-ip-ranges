data "http" "this" {
  url = var.url

  request_headers = {
    "Accept" = "application/json"
  }
}

locals {
  _prefixes = tolist(jsondecode(data.http.this.response_body).prefixes)
  ipv4_range = compact([
    for p in local._prefixes :
    contains(keys(p), "ipv4Prefix") ? p.ipv4Prefix : null
  ])
  ipv6_range = compact([
    for p in local._prefixes :
    contains(keys(p), "ipv6Prefix") ? p.ipv6Prefix : null
  ])
}
