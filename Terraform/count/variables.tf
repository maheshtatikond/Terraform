variable "instances"{
    type = list
    default = ["Mongodb", "redis", "MysQl", "RabbitMQ", "catalogue", "user", "Cart", "Shipping", "Payment", "Frontend"]
    description = "List of instances to be created"
  
}

variable "zone_id" {
  description = "The Route53 zone ID"
  type        = string
  default    = "Z0170421WZ5R664XPDL2"

}

variable "domain_name" {
  description = "The domain name for the Route53 record"
  type        = string
  default     = "smttechnologies.online"
  
}