resource "aws_instance" "jenkins" {
    ami = "ami-0a699202e5027c10d"
    instance_type = "t2.micro"
    #availability_zone = "us-east-1"
     key_name = "week7key"
     subnet_id = aws_subnet.public_subnet1.id
     vpc_security_group_ids = [ aws_security_group.sg1.id ]
     user_data = file("jenkins.sh")

     tags = {
       Name = "jenkins-server"
     }
  
}