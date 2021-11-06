resource "aws_route53_zone" "main" {
  name = "blog.atil.link"
}
resource "aws_route53_zone" "dev" {
  name = "blog.atil.link"
}
  
resource "aws_route53_record" "dev-ns" {
  zone_id = "Z05106462CHKSQ0XU0LUB"
  name    = "blog.atil.link"
  type    = "NS"
  ttl     = "300"
  records = ["127.0.0.1"]
}