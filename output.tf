output "ipv4_range" {
  description = "A list of IPv4 Addresses for outbound connections from Google Cloud."
  value       = local.ipv4_range
}

output "ipv6_range" {
  description = "A list of IPv6 Addresses for outbound connections from Google Cloud."
  value       = local.ipv6_range
}
