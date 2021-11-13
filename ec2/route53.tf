resource "aws_route53_record" "wordpress" {

  zone_id = "Z05106462CHKSQ0XU0LUB" 

  name    = "wordpress.atil.link"

  type = "A"

  ttl = "30"

  records = [aws_instance.web.public_ip]
}