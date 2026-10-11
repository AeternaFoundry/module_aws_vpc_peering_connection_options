output "vpc_peering_connection_options_id" {
  description = "Map of id values across all vpc_peering_connection_options, keyed the same as var.vpc_peering_connection_options"
  value       = { for k, v in aws_vpc_peering_connection_options.vpc_peering_connection_options : k => v.id if v.id != null && length(v.id) > 0 }
}
output "vpc_peering_connection_options_accepter" {
  description = "Map of accepter values across all vpc_peering_connection_options, keyed the same as var.vpc_peering_connection_options"
  value       = { for k, v in aws_vpc_peering_connection_options.vpc_peering_connection_options : k => one(v.accepter) if v.accepter != null && length(v.accepter) > 0 }
}
output "vpc_peering_connection_options_region" {
  description = "Map of region values across all vpc_peering_connection_options, keyed the same as var.vpc_peering_connection_options"
  value       = { for k, v in aws_vpc_peering_connection_options.vpc_peering_connection_options : k => v.region if v.region != null && length(v.region) > 0 }
}
output "vpc_peering_connection_options_requester" {
  description = "Map of requester values across all vpc_peering_connection_options, keyed the same as var.vpc_peering_connection_options"
  value       = { for k, v in aws_vpc_peering_connection_options.vpc_peering_connection_options : k => one(v.requester) if v.requester != null && length(v.requester) > 0 }
}
output "vpc_peering_connection_options_vpc_peering_connection_id" {
  description = "Map of vpc_peering_connection_id values across all vpc_peering_connection_options, keyed the same as var.vpc_peering_connection_options"
  value       = { for k, v in aws_vpc_peering_connection_options.vpc_peering_connection_options : k => v.vpc_peering_connection_id if v.vpc_peering_connection_id != null && length(v.vpc_peering_connection_id) > 0 }
}

