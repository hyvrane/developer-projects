output "public_ip" {
    value = aws_instance.jenkins.public_ip
  
}
output "dns-name" {
  value = aws_route53_record.rc1.name
}
output "ssh" {
    value = "ssh -i week7key.pem ec2-user@${aws_instance.jenkins.public_ip}"
  
}