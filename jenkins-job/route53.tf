resource "aws_route53_record" "rc1" {
    zone_id = "Z01269013JXG4SWYKK6GL"
    type = "A"
    ttl = 300
    name =  "jenkins.lohfhairs.xyz"
    records = [ aws_instance.jenkins.public_ip  ]
  
}