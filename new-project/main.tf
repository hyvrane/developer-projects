data "aws_instance" "test2" {
    instance_id = "i-0104a89a8718d6c5e"
    
  
}

resource "null_resource" "project2" {
    provisioner "local-exec" {
        command = <<-EOF
                  echo "public_ip = ${data.aws_instance.test2.public_ip}" > project.txt 
                  echo "private_ip = ${data.aws_instance.test2.private_ip}" >> project.txt
                  echo "private_dns = ${data.aws_instance.test2.private_dns}" >> project.txt
                  echo "public_dns = ${data.aws_instance.test2.public_dns}" >> project.txt
                  echo "key_name = ${data.aws_instance.test2.key_name}" >> project.txt
                  echo "security_groups = ${join (",",data.aws_instance.test2.security_groups)}" >> project.txt
                  echo "security_group_ids = ${join (",",data.aws_instance.test2.vpc_security_group_ids)}" >> project.txt

        EOF 
        interpreter = [ "bash", "-c" ] 
    }

  
}
