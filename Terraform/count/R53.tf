resource "aws_route53_record" "www" {
  count = 10  
  zone_id = var.zone_id
  # interpolation
  name    = "${var.instances[count.index]}.${var.domain_name}" #mongodb.smttechnologies.online, redis.smttechnologies.online, etc.
  type    = "A"
  ttl     = 1
  records = [aws_instance.terraforminstance[count.index].private_ip]

}