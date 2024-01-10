resource "aws_instance" "my_terra_instance"{
                        
                    ami  = "ami-05fb0b8c1424f266b"
                    instance_type = "t2.micro"
                    key_name = "mera-server"
          
                    tags={
                          Name = "tf_instance"
                        
                         }
                   lifecycle {
                	prevent_destroy = false
                             }
}

resource "aws_s3_bucket" "meribucket"{
                  bucket = "meribuckethain"
}
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_terra_instance.public_ip
}
