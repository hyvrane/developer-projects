data "aws_instance" "server1" {
    instance_id = "i-0104a89a8718d6c5e"
  
}

resource "aws_instance" "test-server" {
    ami = data.aws_instance.server1.ami
    instance_type = "t2.small"
    security_groups = data.aws_instance.server1.security_groups
    key_name = data.aws_instance.server1.key_name
    user_data = file("flower.sh")

    tags = {
        Name = "data-server"
    }
  
}