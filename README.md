# Google Cloud IP Addresses

This module provides both an IPv4 and IPv6 list of Google Cloud 
IP Addresses fetched from https://www.gstatic.com/ipranges/cloud.json

## Example usages

### AWS Security group

```
module "gcloud" {
  source = "calidae/google-cloud-ip-ranges/http"
}

resource "aws_security_group" "example" {
  name        = "example"
  description = "Example security group"

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = module.gcloud.ipv4_range
    ipv6_cidr_blocks = module.gcloud.ipv6_range
    description      = "Connections from Google Cloud"
  }
}
```
